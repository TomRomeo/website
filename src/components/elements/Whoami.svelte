<script lang="ts">
</script>

<main>
    <svg viewBox="0 0 1920 1580" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path
            d="M718 33.5C518.8 29.5 163.333 175.833 10.5 249.5L-205.5 1425C-158.833 1458 -33.5 1533.7 94.5 1572.5C254.5 1621 888 1402 929 1392C970 1382 1229 1425 1303 1425C1377 1425 1651.5 1247 1725 1247C1783.8 1247 1919.17 1302.67 1979.5 1330.5V0.5C1855.67 38.5 1578.5 115.1 1460.5 117.5C1313 120.5 967 38.5 718 33.5Z"
            fill="#E3B505"
        />
        <path
            d="M266.5 90C186.5 74.4 11.1667 138.833 -66.5 173L-53.5 1362H821.5C843 1362 950.5 1401 981 1401C1005.4 1401 1091.83 1382.33 1131 1362C1193.5 1360.5 1329.4 1358.4 1373 1362C1427.5 1366.5 1545 1329 1573 1316C1601 1303 1645 1307.5 1680 1303C1708 1299.4 1823.67 1255.17 1878 1233.5L2161 691L1826 46.5C1745.33 28.3333 1566.2 -6.20003 1495 0.999974C1423.8 8.19997 1267.67 73.6666 1198.5 105.5C921.167 106.833 346.5 105.6 266.5 90Z"
            fill="#E3B505"
            fill-opacity="0.9"
        />
    </svg>
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
        svg {
            height: 200vh;
        }
        #content {
            justify-content: center;
        }
    }
    #content {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;

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
