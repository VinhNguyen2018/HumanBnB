
// console.log("Hello from app/javascript/packs/application.js!");

const initToggleActiveTabs = () => {
  const tabs = document.querySelectorAll('.tabs-underlined .tab-underlined');
  const vente = document.getElementById('vente active');
  const achat = document.getElementById('achat');
  tabs.forEach( (tab) => {
    tab.addEventListener("click", (event) => {
      // const test = event.currentTarget;
      console.log(test);
      console.log(event);
      event.currentTarget.classList.toggle("tab-active");
      // event.classList.toggle("active");
      // achat.classList.toggle("active");
      // vente.classList.toggle("active");
    })
  })
}
export { initToggleActiveTabs };
