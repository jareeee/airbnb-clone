import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateWishlistStatus() {

    const userLoggedIn = this.element.dataset.userLoggedIn;
    if (userLoggedIn === "false") {
      document.querySelector('.js-login').click();
      return
    }
    if (this.element.dataset.status === "false") {
      this.element.classList.remove("fill-none")
      this.element.classList.add("fill-[#FF5A5F]")
      this.element.dataset.status = "true"
    } else {
      this.element.classList.remove("fill-[#FF5A5F]")
      this.element.classList.add("fill-none")
      this.element.dataset.status = "false"
    }
  }
}
