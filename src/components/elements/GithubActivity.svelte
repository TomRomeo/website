<script lang="ts">
    import { onMount } from "svelte";

    let formattedActivities = [];

    onMount(() => {
        loadGithubActivity();
    });

    function loadGithubActivity() {
        let httpRequest = new XMLHttpRequest();

        httpRequest.onreadystatechange = (event) => {
            let req = event.currentTarget;
            if (req.readyState == XMLHttpRequest.DONE && req.status == 200) {
                let activities = JSON.parse(req.responseText);

                // Define which kind of Activities I want to display
                let interestingActivities = [
                    "PushEvent",
                    "IssueCommentEvent",
                    "PullRequestEvent",
                    "PullRequestReviewEvent",
                    "ForkEvent",
                    "CreateEvent",
                    "IssuesEvent",
                ];

                // filter all activities for the interesting ones
                const githubFeed = activities.filter((activity) =>
                    interestingActivities.includes(activity.type)
                );
                formatGithubFeed(githubFeed);
            }
        };

        httpRequest.open(
            "GET",
            "https://api.github.com/users/TomRomeo/events?per_page=100",
            true
        );
        httpRequest.send();
    }
    function formatGithubFeed(githubFeed) {

        // reduce to newest 3
        let activities = githubFeed.slice(0, 3);

        activities.forEach((activity) => {

            // parse the activity
            const formattedActivity = formatGithubMessage(activity);

            // add the formatted activity to the list of activities
            formattedActivities = [...formattedActivities, formattedActivity];
        });
    }
    function formatGithubMessage(activity) {
        const formattedMessage = {};

        // format the timestamp of the activity
        formattedMessage["timeAgo"] = formatTimeDelta(
            new Date(activity.created_at)
        );

        switch (activity.type) {
            case "PushEvent":
                formattedMessage["title"] = "Pushed -> " + activity.repo.name;
                if (activity.payload.size > 1) {
                    formattedMessage["msg"] = "multiple commits";
                } else {
                    formattedMessage["msg"] =
                        activity.payload.commits[0].message;
                }
                formattedMessage["url"] = activity.payload.commits[0].url
                    .replace("api.", "")
                    .replace("/repos", "")
                    .replace("commits", "commit");

                break;

            case "IssueCommentEvent":
                formattedMessage[
                    "title"
                ] = `${activity.payload.action} comment - ${activity.repo.name}`;
                formattedMessage["msg"] = activity.payload.comment.body;
                formattedMessage["url"] =
                    activity.payload.comment.html_formattedMessage["url"];

                break;
            case "PullRequestEvent":
                formattedMessage[
                    "title"
                ] = `${activity.payload.action} PR -> ${activity.repo.name}#${activity.payload.number}`;
                formattedMessage[
                    "msg"
                ] = `${activity.payload.pull_request.title}`;

                formattedMessage["url"] =
                    activity.payload.pull_request.url;

                break;
            case "PullRequestReviewEvent":
                formattedMessage[
                    "title"
                ] = `Reviewed -> ${activity.repo.name}#${activity.payload.pull_request.number}`;
                if (activity.payload.review.body) {
                    formattedMessage["msg"] = activity.payload.review.body;
                } else {
                    formattedMessage["msg"] = "No comment.";
                }
                formattedMessage["url"] =
                    activity.payload.review.html_formattedMessage["url"];

                break;
            case "ForkEvent":
                console.log(activity);
                formattedMessage["title"] = "Forked";
                formattedMessage["msg"] = `Forked ${activity.repo.name}`;
                formattedMessage["url"] =
                    activity.payload.forkee.html_formattedMessage["url"];

                break;
            case "CreateEvent":
                formattedMessage["title"] = activity.repo.name;
                if (activity.payload.ref) {
                    formattedMessage[
                        "msg"
                    ] = `Created ${activity.payload.ref_type} ${activity.payload.ref}`;
                    formattedMessage[
                        "url"
                    ] = `https://github.com/${activity.repo.name}/tree/${activity.payload.ref}`;
                } else {
                    formattedMessage["msg"] = `Created repository`;
                    formattedMessage[
                        "title"
                    ] = `Initialized ${formattedMessage["title"]}`;
                    formattedMessage[
                        "url"
                    ] = `https://github.com/${activity.repo.name}`;
                }

                break;
            case "IssuesEvent":
                formattedMessage[
                    "title"
                ] = `${activity.payload.action} Issue -> ${activity.repo.name}#${activity.payload.issue.number}`;
                formattedMessage[
                    "msg"
                ] = `${activity.payload.issue.formattedMessage["title"]}`;
                formattedMessage["url"] =
                    activity.payload.issue.html_formattedMessage["url"];

                break;

            default:
                break;
        }
        return formattedMessage;
    }

    function formatTimeDelta(created_at) {
        const deltaInMilliSec = Date.now() - created_at;
        const deltaInMinutes = deltaInMilliSec / 60000;
        const deltaInHours = deltaInMinutes / 60;
        const deltaInDays = deltaInHours / 24;
        const deltaInWeeks = deltaInDays / 7;
        const deltaInMonths = deltaInWeeks / 4;
        let delta;
        if (deltaInMonths < 1) {
            if (deltaInWeeks < 1) {
                if (deltaInDays < 1) {
                    if (deltaInHours < 1) {
                        delta = Math.floor(deltaInMinutes) + "min";
                    } else {
                        delta = Math.floor(deltaInHours) + "h";
                    }
                } else {
                    delta = Math.ceil(deltaInDays) + "d";
                }
            } else {
                delta = Math.floor(deltaInWeeks) + "w";
            }
        } else {
            delta = Math.floor(deltaInMonths) + "m";
        }
        delta += " ago";
        return delta;
    }
</script>

<main>
    <h2>Take a look at my recent activity:</h2>
    <img class="icon" src="/assets/Github_icon.svg" alt="Github icon" />
    <div id="githubActivityWrapper" class="activityWrapper">
        <div id="githubActivityCornerBox" class="activityCornerBox">
            {#each formattedActivities as activity}
                <div class="githubActivity">
                    <a
                        href={activity.url}
                        class="activityLink"
                        target="_blank"
                        rel="noopener noreferrer"
                    >
                        <div class="activityBox">
                            <div class="activityHeader">
                                <p class="activityTitle">{activity.title}</p>
                                <p class="activityTime">
                                    {activity.timeAgo}
                                </p>
                            </div>
                            <p class="activityMsg">{activity.msg}</p>
                        </div>
                    </a>
                </div>
            {/each}
            <div id="loadMoreActivitiesWrapper">
                <a
                    href="https://github.com/TomRomeo#js-contribution-activity"
                    target="_blank"
                    rel="noopener noreferrer">Load more</a
                >
            </div>
        </div>
    </div>
</main>

<style lang="scss">
    main {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    img {
        width: 4rem;
        margin-bottom: 0.5rem;
    }
    .githubActivity {
        background-color: #181818;
    }

    #githubActivityCornerBox {
        border: 3px var(--main-color) dashed;
        border-radius: 0.5rem;
        padding: 1rem;
        display: flex;
        flex-direction: column;

        .githubActivity {
            padding: 0.5rem 1rem;
            margin: 0.5rem 0;
            border-radius: 0.5rem;

            a {
                color: white;
                text-decoration: none;
            }

            .activityHeader {
                display: flex;
                gap: 2rem;
                justify-content: space-between;
                margin-bottom: 0;

                p {
                    margin: 0;
                }

                .activityTitle {
                    font-weight: bold;
                    max-width: 40ch;
                }

                .activityTime {
                    color: rgba(255, 255, 255, 0.589);
                }
            }
            .activityMsg {
                margin-top: 0.5rem;
            }

            &:hover {
                cursor: pointer;
            }
        }

        #loadMoreActivitiesWrapper {
            margin: 1rem 0;
            align-self: flex-end;

            a {
                border-radius: 0.5rem;
                padding: 0.5rem;
                background-color: #181818;
                color: white;
            }
        }
    }
</style>
