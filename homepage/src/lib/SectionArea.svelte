<script>
    import Section from "./Section.svelte";

    let content1 = [
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

    let content2 = [
        {
            name: "Curriculum (BR)",
            image: "doc-br.png",
            link: "/curriculum-pt.pdf"
        },
        {
            name: "Curriculum (EN)",
            image: "doc-en.png",
            link: "/curriculum-en.pdf"
        }
    ]

</script>

<div class="section-area">
    <Section content={content1}/>
    <Section content={content2}/>
    <!-- <Section /> -->
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