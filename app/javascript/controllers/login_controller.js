import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
  static targets = ["loginForm", "forgotForm"]

  connect() {
    const modalElement = document.getElementById("modalLoginForm")
    if (modalElement) {
      this.modal = new Modal(modalElement)
    }
  }

  // showForgot(event) {
  //   event.preventDefault()
  //   this.loginFormTarget.classList.add("hidden")
  //   this.forgotFormTarget.classList.remove("hidden")
  // }

  // showLogin(event) {
  //   event.preventDefault()
  //   this.forgotFormTarget.classList.add("hidden")
  //   this.loginFormTarget.classList.remove("hidden")
  // }

  showForgotPassword(event) {
    event.preventDefault()
    if (this.modal) {
      this.modal.show()
    }
    this.showForgot(event)
  }
}
