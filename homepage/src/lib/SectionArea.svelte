<script>
    import Section from "./Section.svelte";
</script>

<div class="section-area">
    <Section />
    <!-- <Section /> -->
    <!-- <Section /> -->
</div>

<style>
    .section-area {
        width: 100%;
        height: 100%;

        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 1.5em;
    }
</style>