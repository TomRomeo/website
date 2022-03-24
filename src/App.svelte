<script lang="ts">
	import Contact from "./components/elements/Contact.svelte";
	import GithubActivity from "./components/elements/GithubActivity.svelte";
	import Navbar from "./components/elements/Navbar.svelte";
	import Whoami from "./components/elements/Whoami.svelte";
    import SvelteSeo from "svelte-seo";
</script>

<!-- Seo -->
<SvelteSeo
  title="Tom Doil"
  description="Website of Tom Doil"
  keywords="website tom doil programming cv"
  canonical="https://trd.moe"
  openGraph={{
    title: 'Tom Doil',
          description: 'Website of Tom Doil',
          url: 'https://trd.moe',
          type: 'website',
          images: [
              {
                  url: 'https://media-exp1.licdn.com/dms/image/C4E03AQHPQ1Qqbw0k0A/profile-displayphoto-shrink_200_200/0/1638398403357?e=1649289600&v=beta&t=fUfnDMwZo6emRwzlgDNAcYwHwuGL5mKJ3KJV4zddPwU',
                  width: 200,
                  height: 200,
                  alt: 'Image of Tom'
              }
          ]


  }}
  twitter={{
    title: "Tom Doil",
    description: "Website of Tom Doil",
    image: "https://media-exp1.licdn.com/dms/image/C4E03AQHPQ1Qqbw0k0A/profile-displayphoto-shrink_200_200/0/1638398403357?e=1649289600&v=beta&t=fUfnDMwZo6emRwzlgDNAcYwHwuGL5mKJ3KJV4zddPwU",
    imageAlt: "Image of Tom",
  }}
/>


<main>
	<Navbar />
	<section id="homeContainer">
		<div id="pfpWrapper">
			<img
				src="https://media-exp1.licdn.com/dms/image/C4E03AQHPQ1Qqbw0k0A/profile-displayphoto-shrink_200_200/0/1638398403357?e=1649289600&v=beta&t=fUfnDMwZo6emRwzlgDNAcYwHwuGL5mKJ3KJV4zddPwU"
				alt="profilepicture"
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
		<div class="posRelative">
			<div class="waveDividerBottom">
				<svg
					data-name="Layer 1"
					xmlns="http://www.w3.org/2000/svg"
					viewBox="0 0 1200 120"
					preserveAspectRatio="none"
				>
					<path
						d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z"
						opacity=".25"
						class="shape-fill"
					/>
					<path
						d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z"
						opacity=".5"
						class="shape-fill"
					/>
					<path
						d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z"
						class="shape-fill"
					/>
				</svg>
			</div>
		</div>

		<Whoami />
		<div class="posRelative">
			<div class="waveDividerTop">
				<svg
					data-name="Layer 1"
					xmlns="http://www.w3.org/2000/svg"
					viewBox="0 0 1200 120"
					preserveAspectRatio="none"
				>
					<path
						d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z"
						opacity=".25"
						class="shape-fill"
					/>
					<path
						d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z"
						opacity=".5"
						class="shape-fill"
					/>
					<path
						d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z"
						class="shape-fill"
					/>
				</svg>
			</div>
		</div>
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

		@media (max-width: 420px) {
			margin-top: 5rem;
		}

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
				padding: 0.5rem;

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
			from {
				width: 0;
			}
			to {
				width: 6em;
			}
		}

		@keyframes blink-caret {
			from,
			to {
				border-color: transparent;
			}
			50% {
				border-color: rgba(255, 165, 0, 0.8);
			}
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

				margin: 0;
				margin-top: 1rem !important;
				overflow: hidden;
				border-right: 0.1em solid rgba(255, 165, 0, 0.8); /* The typwriter cursor */
				white-space: nowrap;
				display: inline-block;
				animation: typing 1s steps(6, end),
					blink-caret 0.1667s step-end 6,
					blink-caret 2s 2s step-end infinite;
			}
		}
	}
	#githubActivitySection {
		position: relative;
		display: flex;
		justify-content: center;
		margin-bottom: 10vh;
	}
	#whoamiSection {
		min-height: 100vh;
	}
	#contactSection {
		position: relative;
	}

	.posRelative {
		position: relative;
		height: 20vh;
	}
	.waveDividerBottom {
		position: absolute;
		bottom: 0;
		left: 0;
		width: 100%;
		margin-bottom: -1px;
		overflow: hidden;
		line-height: 0;
		transform: rotate(180deg);
	}

	.waveDividerBottom svg {
		position: relative;
		display: block;
		width: calc(100% + 1.3px);
		height: 150px;
	}

	.waveDividerBottom .shape-fill {
		fill: #e3b505;
	}

	/** For mobile devices **/
	@media (max-width: 767px) {
		.waveDividerBottom svg {
			width: calc(241% + 1.3px);
			height: 150px;
		}
	}
	.waveDividerTop {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		margin-top: -1px;
		overflow: hidden;
		line-height: 0;
	}

	.waveDividerTop svg {
		position: relative;
		display: block;
		width: calc(100% + 1.3px);
		height: 150px;
	}

	.waveDividerTop .shape-fill {
		fill: #e3b505;
	}

	/** For mobile devices **/
	@media (max-width: 767px) {
		.waveDividerTop svg {
			width: calc(241% + 1.3px);
			height: 150px;
		}
	}
</style>
