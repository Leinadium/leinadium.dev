<script>
    import { slide } from "svelte/transition";

    export let image = "assets/svelte.svg";
    export let link = "";
    export let name = "";
    export let enabled = false;
</script>

<div class="field">
    {#if enabled}
        <a
            href={link ? link : "/#"}
            target={link ? "_blank" : "_self"}
            on:click
            in:slide={{ delay: 250, duration: 300, axis: 'y' }}
        >
            <img src={image} alt={name} />
            <span>{name}</span>
        </a>
    {:else}
        <p>...</p>
    {/if}
</div>

<style>
    .field, a {
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 0.1em;

        width: 25%;
    }

    img {
        height: 2em;
        
        /* border-radius: 50%; */
    }
    p {
        width: 7em;
        visibility: hidden;
    }

    span {
        color: #9EC8B9;
        font-size: 0.7em;
        font-weight: 300;
    }
</style>