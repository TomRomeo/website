<script lang="ts">
</script>

<main>
    <div id="letsGetInTouch">
        <h1>Let's get in touch!</h1>
        <p>
            Do you like Coffee? Is programming something you enjoy as well? Then
            I am sure we will get along great! You can check out my Github
            profile, connect on LinkedIn or write me an E-mail. I'll be happy to
            hear from you!
        </p>
    </div>
    <div id="imageWrapper">
        <a href="https://github.com/TomRomeo" target="_blank"
            ><img src="/assets/github_icon.svg" alt="github icon" /></a
        >
        <a href="https://www.linkedin.com/in/tom-doil-663185227" target="_blank"
            ><img src="/assets/linkedIn_icon.svg" alt="linkedIn icon" /></a
        >
        <a href="mailto:Tom.Romeo.Doil@gmail.com" target="_blank"
            ><img src="/assets/email_icon.svg" alt="email icon" /></a
        >
    </div>
</main>

<style lang="scss">
    main {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 10rem;
        min-height: 70vh;

        #letsGetInTouch {
            p {
                margin-left: 1rem;
            }
        }

        #imageWrapper {
            display: flex;
            justify-content: center;
            gap: 1rem;

            a:hover {
                cursor: pointer;
            }
        }
    }
    img {
        width: 3rem;
    }
    p {
        max-width: 60ch;
    }
</style>
