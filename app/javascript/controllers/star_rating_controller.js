import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    let stars = new StarRating(this.element,
      {
        tooltip: false
      }
    )
  }
}
