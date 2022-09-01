import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "text" ]

  save() {
    const element = this.textTarget
    const text = element.value
    console.log(text)
  }
}
