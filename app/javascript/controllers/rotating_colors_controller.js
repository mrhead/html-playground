import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.colorClasses = ["text-red-500", "text-orange-500", "text-amber-500", "text-yellow-500", "text-lime-500", "text-green-500", "text-emerald-500", "text-teal-500", "text-cyan-500", "text-sky-500", "text-blue-500", "text-indigo-500", "text-violet-500", "text-purple-500", "text-fuchsia-500", "text-pink-500", "text-rose-500"]

    this.changeColor()
    setInterval(this.changeColor.bind(this), 1000)
  }

  changeColor() {
    if(this.currentClass) {
      this.element.classList.remove(this.currentClass)
    }
    this.currentClass = this.getRandomClass()
    this.element.classList.add(this.currentClass)
  }

  getRandomClass() {
    return this.colorClasses[Math.floor(Math.random() * this.colorClasses.length)]
  }
}
