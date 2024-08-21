import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sloop", "capacity"]
  static values = { capacityBySloop: Object }

  connect() {
    // console.log(this.capacityBySloopValue)
  }

  updateCapacity() {
    // console.log("capacity")
    // console.log(selectedSloop)
    // console.log(selectedSloop.value)
    // console.log(this.capacityBySloopValue[selectedSloop.value])

    const selectedSloop = this.sloopTarget.selectedOptions[0]
    const capacity = this.capacityBySloopValue[selectedSloop.value]
    this.capacityTarget.value = capacity
  }
}
