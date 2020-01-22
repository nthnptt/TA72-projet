function apply_clipboard() {
    let elements = document.querySelectorAll(".click-to-clipboard")
    elements.forEach(($e) => {
        console.log($e)
        $e.addEventListener("click", (e) => {
            navigator.clipboard.writeText(e.currentTarget.dataset.clip)
        })
    })
}
apply_clipboard();