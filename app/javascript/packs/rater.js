let goodStar = '<i class="fas fa-star"></i>';
let badStar = '<i class="far fa-star"></i>';
let halfStar = '<i class="fas fa-star-half-alt"></i>';

function create_rater(className) {
    $elements = document.querySelectorAll("." + className)
    $elements.forEach($e => {
        let rate = $e.dataset.rate
        let html = ""
        for (let k = 1; k < 6; k++) {
            if (k <= rate) {
            html += goodStar
            } else {
                if (k - rate < 1 && rate % (k-1) >= 0.5)
                    html += halfStar
                else
                    html += badStar
            }
        }
        $e.innerHTML = html
    })
}

create_rater("rater")