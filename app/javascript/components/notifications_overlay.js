const notificationOverlay = () => {

  const alert = document.querySelector(".fas.fa-bell.fas-footer")
  const notifications_overlay = document.querySelector(".notifications-container")


  alert.addEventListener("click", () => {
    notifications_overlay.style.pointerEvents = "all"
    notifications_overlay.style.opacity = 1
  })

  const close_overlay = document.querySelector(".close-overlay")
  close_overlay.addEventListener("click", () => {
    notifications_overlay.style.pointerEvents = "none"
    notifications_overlay.style.opacity = 0
  })
}

export { notificationOverlay };
