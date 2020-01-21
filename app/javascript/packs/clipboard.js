function apply_clipboard() {
    let elements = document.querySelectorAll(".click-to-clipboard")
    console.log(elements)
    elements.forEach(($e) => {
        $e.addEventListener("click", (e) => {
            console.log(e.target.dataset.clipboard)
            navigator.clipboard.writeText(e.target.dataset.clipboard)
        })
    })
}
apply_clipboard();