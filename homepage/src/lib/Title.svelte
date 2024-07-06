<script>
    let name = "Daniel Guimarães";
    let user = "Leinadium";
</script>

<div class="main-title">
    <div class="div-name">
        <img src="https://avatars.githubusercontent.com/u/61909415?v=4" alt="Me!" />
        <span class="name">{name}</span>
        <span class="user">
            <span class="at">@</span>{user}
        </span>
    </div>

</div>

<style>
    .main-title {
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 2em;
    }
    img {
        height: 6em;
        border: 0.1em solid #9EC8B9;
        border-radius: 50%;
    }
    .div-name {
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        color: #9EC8B9;
    }
    .name {
        height: 1.2em;
        font-size: 3em;
        font-weight: 600;
        margin-bottom: 0;
    }
    .user, .at {
        font-size: 1.5em;
        font-weight: 500;
        opacity: 0.7;
    }
    .at {
        font-size: 1.2em;
        opacity: 0.4 !important;
    }
</style>
