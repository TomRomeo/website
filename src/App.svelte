<script lang="ts">
	import GithubActivity from "./components/elements/GithubActivity.svelte";
import Navbar from "./components/elements/Navbar.svelte";
</script>

<main>
	<Navbar />
	<section id="homeContainer">
		<img
			src="https://media-exp1.licdn.com/dms/image/C4E03AQHPQ1Qqbw0k0A/profile-displayphoto-shrink_200_200/0/1638398403357?e=1649289600&v=beta&t=fUfnDMwZo6emRwzlgDNAcYwHwuGL5mKJ3KJV4zddPwU"
			alt="profile picture"
		/>
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
</main>

<style lang="scss">
	#homeContainer {
		display: flex;
		justify-content: center;
		align-items: center;

		* {
			margin: 0 .5rem;
		}

		img {
			border-radius: 10rem;
		}

		#warmWelcome {
			max-width: 40ch;
			
			* {
				margin: .5ch 0;
			}

			#konnichiha {
				color: var(--main-color);
				font-weight: bold;
			}
		}
	}
	#githubActivitySection {
		display: flex;
		justify-content: center;
	}
</style>
