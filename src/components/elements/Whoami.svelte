<script lang="ts">
</script>

<main>
    <div id="content">
        <div id="activityDiv">
            <div class="activity">
                <p class="activityTime">2021 - Now</p>
                <p class="activityText">
                    Dual study in Computer Science at SAP SE
                </p>
            </div>
            <div class="activity">
                <p class="activityTime">Mar - Oct 2020</p>
                <p class="activityText">
                    Internship as Developer for Cosmic@Web at the German
                    Electron Synchroton
                </p>
            </div>
            <div class="activity">
                <p class="activityTime">Jun 2020</p>
                <p class="activityText">
                    Graduation from Heinrich Hertz Gymnasium with mathematical
                    and scientific profile
                </p>
            </div>
        </div>
        <div id="whoamiParagraphs">
            <h2><u>whoami</u>?</h2>
            <p>
                My name is Tom Doil, I am currently studying Computer Science at
                the DHBW Karlsruhe while working at SAP SE in
                form of a dual study program. I have been coding for over 4
                years, mainly using Python, NodeJS and Java.
                Recently, I have been working a lot with Svelte and Go.
            </p>
            <p>I am learning Japanese in my spare time and drink a lot of ☕.</p>
        </div>
    </div>
</main>

<style lang="scss">
    main {
        position: relative;
        overflow: hidden;
    }
    @media (max-width: 420px) {
        #content {
            justify-content: center;
        }
    }
    #content {
        padding: 10vh 0;
        background-color: #E3B505;

        display: flex;
        flex-wrap: wrap-reverse;
        justify-content: space-evenly;
        align-items: center;
        color: black;

        #whoamiParagraphs {
            font-size: max(min(1.5vw, 1.5rem), 1rem);
            h2 {
                font-family: 'Roboto Mono', monospace;
            }
            max-width: 50ch;
            @media (max-width: 420px) {
                padding: 1rem;
            }
        }
        #activityDiv {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            max-height: max(20rem, 30em);
            overflow-y: scroll;

            * {
                flex-shrink: 0;
            }

            &::-webkit-scrollbar-thumb {
                background-color: #131313;

                &:hover {
                    background-color: #181818;
                }
            }

            .activity {
                color: white;
                background-color: #131313;
                min-height: 3rem;
                padding: min(1em, 1rem);
                border-radius: 0.3rem;
                font-size: max(1.5vw, 1.2rem);

                .activityTime {
                    color: rgba(255, 255, 255, 0.637);
                    margin: 0;
                    margin-bottom: 0.5em;
                    font-size: 0.8em;
                }
                .activityText {
                    margin-left: .5em;
                    max-width: 30ch;
                }
            }
        }
    }
</style>
