<script>
    import { onMount } from "svelte";
    import Field from "./Field.svelte";
    export let name = "Title";
    export let content = [
        {
            name: "Leinadium",
            image: "github-1.svg",
            link: "https://github.com/Leinadium"
        },
        {
            name: "Daniel Guimarães",
            image: "linkedin-1.svg",
            link: "https://www.linkedin.com/in/daniel-guimaraes-a0993b213/"
        },
        {
            name: "@leinadguimaraes",
            image: "insta-1.svg",
            link: "https://instagram.com/leinadguimaraes"
        },
        {
            name: "2018GUIM02",
            image: "wca-1.svg",
            link: "https://www.worldcubeassociation.org/persons/2018GUIM02"
        },
    ];

    $: enabledContent = Array(content.length).fill(false);

    function enable(i) {
        if (i < content.length) {
            enabledContent[i] = true;
            setTimeout(() => enable(i + 1), 150);
        }
    }

    onMount(() => {
        enable(0);
    });

</script>


<div class="section">
    <span class="section-title" style="display: none">{name}</span>
    <div class="section-content">
        {#each content as {name, image, link}, i}
            <Field
                image={image}
                link={link}
                name={name}
                enabled={enabledContent[i]}
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
        flex-flow: row nowrap;
        justify-content: center;
        align-items: center;
        gap: 10%;
    }

    .section-title {
        color: #9EC8B9;
        font-size: 0.8em;
        font-weight: 500;
    }
</style>