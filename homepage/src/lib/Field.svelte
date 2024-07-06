<script>
    export let image = "assets/svelte.svg";
    export let link = "";
    export let name = "";
</script>

<a href={link} target="_blank">
    <img src={image} alt={name} />
    <span>{name}</span>
</a>

<style>
    a {
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 0.1em;
    }

    img {
        height: 2em;
        
        /* border-radius: 50%; */
    }

    span {
        color: #9EC8B9;
        font-size: 0.7em;
        font-weight: 300;
    }
</style>