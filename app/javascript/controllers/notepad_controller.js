import { Controller } from "@hotwired/stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "text" ]

  save() {
    const form = document.querySelector('form');
    Rails.fire(form, 'submit');
  }
}
