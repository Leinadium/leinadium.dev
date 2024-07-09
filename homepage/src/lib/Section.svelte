<script>
    import { createEventDispatcher } from "svelte";
    import Field from "./Field.svelte";
    
    export let name = "Title";
    export let content = [];
    export let enable = false;

    $: enabledContent = Array(content.length).fill(false);
    $: contentLength = content.length;

    let dispatcher = createEventDispatcher();

    function dispatchSwitch(name) {
        dispatcher("switch", { message: name });
    }

    function dispatchReady() {
        dispatcher("ready");
    }

    function enableField(i) {
        if (i < content.length) {
            enabledContent[i] = true;
            setTimeout(() => enableField(i + 1), 150);
        }
    }

    $: { if (enable && content) setTimeout(() => {enableField(0)}, 150); };
</script>


<div class="section">
    <span class="section-title" style="display: none">{name}</span>
    <div class="section-content">
        {#each content as {id, name, image, link}, i}
            <Field
                image={image}
                link={link}
                name={name}
                enabled={enabledContent[i] && enable}
                on:click={() => dispatchSwitch(id)}
                on:outroend={() => {
                    if (i === contentLength - 1) dispatchReady();
                }}
            />
        {/each}
    </div>
</div>

<style>
    .section {
        width: 100%;
        height: 100%;

        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 1em;
    }

    .section-content {
        min-width: 100%;
        max-width: 100%;
        height: 100%;

        display: flex;
        flex-flow: row wrap;
        justify-content: center;
        align-items: start;
        gap: 10%;
    }

    .section-title {
        color: #9EC8B9;
        font-size: 0.8em;
        font-weight: 500;
    }
</style>