<script>
    import Section from "./Section.svelte";

    const content1 = [
        {
            id: "github",
            name: "Leinadium",
            image: "github-1.svg",
            link: "https://github.com/Leinadium"
        },
        {
            id: "linked",
            name: "Daniel Guimarães",
            image: "linkedin-1.svg",
            link: "https://www.linkedin.com/in/daniel-guimaraes-a0993b213/"
        },
        {
            id: "instagram",
            name: "@leinadguimaraes",
            image: "insta-1.svg",
            link: "https://instagram.com/leinadguimaraes"
        },
        {
            id: "wca",
            name: "2018GUIM02",
            image: "wca-1.svg",
            link: "https://www.worldcubeassociation.org/persons/2018GUIM02"
        },
        {
            id: "curriculum",
            name: "Curriculum",
            image: "doc-1.svg",
            link: "",
        }
    ];

    const content2 = [
        {
            id: "curriculum-br",
            name: "Curriculum (BR)",
            image: "doc-br.png",
            link: "/static/curriculum-pt.pdf"
        },
        {
            id: "curriculum-en",
            name: "Curriculum (EN)",
            image: "doc-en.png",
            link: "/static/curriculum-en.pdf"
        },
        {
            id: "back",
            name: "Back",
            image: "back-1.svg",
            link: "",
        }
    ]

    let currentContent = content1;
    let nextContent = content1;
    let enableContent = true;

    function switchContent(event) {
        const name = event.detail.message;
        if (name === "curriculum") {
            enableContent = false;
            nextContent = content2;
        }
        else if (name === "back") {
            enableContent = false;
            nextContent = content1;
        }
        else {
            console.log("Invalid content name: " + name);
        }
    }

    function applyContent() {
        currentContent = nextContent;
        enableContent = true;
    }

</script>

<div class="section-area">
    <Section
        content={currentContent}
        enable={enableContent}
        on:switch={switchContent}
        on:ready={applyContent}
    />
</div>

<style>
    .section-area {
        width: 80%;
        height: 100%;

        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        gap: 1.5em;
    }
</style>