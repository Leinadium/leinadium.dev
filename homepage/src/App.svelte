<script>
    import Title from "./lib/Title.svelte";
    import SectionArea from "./lib/SectionArea.svelte";
    // pallete: https://colorhunt.co/palette/0926351b42425c83749ec8b9
</script>

<main>
    <Title />
    <SectionArea />
</main>

<style>
    main {
        min-height: 100vh;
        min-width: 100vw;
        margin: 0;
        padding: 0;
        background: linear-gradient(180deg, #092635 50%, #1B4242 100%);

        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 5vh;
    }
</style>