const initToggleActiveTabs = () => {
  const tabs = document.querySelectorAll('.tab-underlined');
  const vente = document.getElementById('vente');
  const achat = document.getElementById('achat');
  tabs.forEach( (tab) => {
    tab.addEventListener("click", (event) => {
      tabs.forEach((click)=> {
        click.classList.toggle("tab-active");
      })
      vente.classList.toggle("hidden");
      achat.classList.toggle("hidden");
    })
  })
}
export { initToggleActiveTabs };
