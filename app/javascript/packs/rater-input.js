class RaterInput {
    constructor(idName, inputIdName) {
        this.rate = 0;
        this.$input = document.querySelector('#' + inputIdName);
        this.$element = document.querySelector('#' + idName);
        if(this.$element.dataset.lastrate) {
            this.changeRate(this.$element.dataset.lastrate)
        }
        this.render()
    }

    changeRate(rate) {
        if (rate > 0 && rate <= 5) {
            this.rate = Math.floor(rate)
            this.onChange()
        }
    }

    onChange() {
        this.$input.value = this.rate
        this.render()
    }

    render() {
        let html = ""
        for (let k = 1; k < 6; k++) {
            if (k <= this.rate) {
                html += `<div class="rater-elements" data-rate-index="${k}"><i class="fas fa-star"></i></div>`
            } else {
                html += `<div class="rater-elements" data-rate-index="${k}"><i class="far fa-star"></i></div>`
            }
        }
        this.$element.innerHTML=html
        console.log(this.$element.querySelectorAll(".rater-elements"))
        setTimeout(() => {
            this.$element.querySelectorAll(".rater-elements").forEach($e => {
                $e.addEventListener('click', (event) => {
                    this.changeRate(event.currentTarget.dataset.rateIndex)
                })
            })
        }, 200)

    }

}

let t = new RaterInput('rater-input', 'rater-hidden')