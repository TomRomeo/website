<script lang="ts">
	import Contact from "./components/elements/Contact.svelte";
	import GithubActivity from "./components/elements/GithubActivity.svelte";
	import Navbar from "./components/elements/Navbar.svelte";
	import Whoami from "./components/elements/Whoami.svelte";
</script>

<main>
	<Navbar />
	<section id="homeContainer">
		<div id="pfpWrapper">
			<img
				src="https://media-exp1.licdn.com/dms/image/C4E03AQHPQ1Qqbw0k0A/profile-displayphoto-shrink_200_200/0/1638398403357?e=1649289600&v=beta&t=fUfnDMwZo6emRwzlgDNAcYwHwuGL5mKJ3KJV4zddPwU"
				alt="profile picture"
			/>
			<div id="pfpBorder" />
		</div>
		<div id="warmWelcome">
			<h2>Hey! 👋🏼</h2>
			<p>
				My name is Tom. I am a VT Student at SAP Germany that loves to
				code, has a fascination for japanese culture and drinks Coffee
			</p>
			<p id="konnichiha">こんにちは ！</p>
		</div>
	</section>
	<section id="githubActivitySection">
		<GithubActivity />
	</section>
	<section id="whoamiSection">
		<Whoami />
	</section>
	<section id="contactSection">
		<Contact />
	</section>
</main>

<style lang="scss">
	#homeContainer {
		display: flex;
		flex-wrap: wrap;
		align-items: center;
		justify-content: center;
		padding: 10vw;
		gap: 5rem;

		* {
			margin: 0 0.5rem;
		}

		#pfpWrapper {
			position: relative;
			display: flex;

			#pfpBorder {
				position: absolute;
				top: 0;
				bottom: 0;
				left: 0;
				right: 0;
				border-radius: 10rem;
				border: 3px var(--main-color) dashed;
				padding: .5rem;

				animation-name: rotatePfpBorder;
				animation-duration: 2s;
				animation-timing-function: cubic-bezier(0.075, 0.82, 0.165, 1);
				animation-iteration-count: 1;
				animation-fill-mode: forwards;
			}
		}
		@keyframes rotatePfpBorder {
			from {
				transform: rotate(0deg);
			}
			to {
				transform: rotate(90deg);
			}

		}
		@keyframes typing {
			from { width: 0 }
			to { width: 6em }
		}

		@keyframes blink-caret {
			from, to { border-color: transparent }
			50% { border-color: rgba(255, 165, 0, .8); }
		}

		img {
			border-radius: 10rem;
			padding: 0.5rem;
		}

		#warmWelcome {
			max-width: 40ch;

			* {
				margin: 0.5ch 0;
			}

			#konnichiha {
				color: var(--main-color);
				font-weight: bold;

				margin:0;
				margin-top: 1rem !important;
				overflow: hidden;
				border-right: .1em solid rgba(255, 165, 0, .8); /* The typwriter cursor */
				white-space: nowrap;
				display: inline-block;
				animation: 
				typing 1s steps(6, end),
				blink-caret .1667s step-end 6,
				blink-caret 2s 2s step-end infinite;
			}
		}
	}
	#githubActivitySection {
		display: flex;
		justify-content: center;
		margin-bottom: 10vh;
	}
	#whoamiSection {
		min-height: 100vh;
	}
</style>
