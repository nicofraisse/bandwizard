const inputStyling = () => {
}
const divToStyle = document.querySelectorAll('.filter-input')
// const styleInput = divToStyle.querySelector('input')
divToStyle.forEach(d => {
  console.log(d)
  const targetInput = d.querySelector('input')
    targetInput.addEventListener('click', e => {
    if (targetInput.checked) {
      d.classList.add('active')
    } else {
      d.classList.remove('active')
    }
  })
})



// inputStyling();
