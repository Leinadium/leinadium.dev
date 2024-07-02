<script>
    let name = "Daniel Guimarães";
    let user = "Leinadium";
</script>

<div>
    <span class="name">{name}</span>
    <span class="user">
        <span class="at">@</span>{user}
    </span>
</div>

<style>
    div {
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        color: #9EC8B9;
    }
    .name {
        height: 1.2em;
        font-size: 2.5em;
        font-weight: 600;
        margin-bottom: 0;
    }
    .user, .at {
        font-size: 1em;
        font-weight: 500;
        opacity: 0.7;
    }
    .at {
        opacity: 0.4 !important;
    }
</style>
