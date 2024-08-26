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

    // Utiliser une seule fonction pour gérer les résultats
    this.geocoder.on("result", event => this.#handleResult(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #handleResult(event) {
    // Récupère le nom du lieu et affiche seulement la première partie
    const placeName = event.result["place_name"];
    const firstPart = placeName.split(',')[0]; // Prendre la première partie de l'adresse

    if (this.hasStartPortTarget) {
      this.startPortTarget.value = firstPart; // Met à jour avec la première partie
    } else if (this.hasEndPortTarget) {
      this.endPortTarget.value = firstPart; // Met à jour avec la première partie
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
