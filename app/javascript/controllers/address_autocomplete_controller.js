import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }
  static targets = ["startPort", "endPort"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })

    this.geocoder.addTo(this.element)

    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputValue(event) {
    if (this.hasStartPortTarget) {
      this.startPortTarget.value = event.result["place_name"]
    } else if (this.hasEndPortTarget) {
      this.endPortTarget.value = event.result["place_name"]
    }
  }

  #clearInputValue() {
    if (this.hasStartPortTarget) {
      this.startPortTarget.value = ""
    } else if (this.hasEndPortTarget) {
      this.endPortTarget.value = ""
    }
  }
}
