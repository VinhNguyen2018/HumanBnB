const initToggleActiveTabsVente = () => {
  const tabVente = document.getElementById('tab-vente');
  const tabAchat = document.getElementById('tab-achat');
  const tabInfo = document.getElementById('tab-infos');
  const vente = document.getElementById('vente');
  const achat = document.getElementById('achat');
  const info = document.getElementById('infos');
  tabVente.addEventListener("click", (event) => {
      tabVente.classList.toggle("tab-active");
      tabAchat.classList.remove("tab-active");
      tabInfo.classList.remove("tab-active");
      vente.classList.toggle("hidden");
      achat.classList.add("hidden");
      info.classList.add("hidden");
  })
}

const initToggleActiveTabsInfos = () => {
  const tabVente = document.getElementById('tab-vente');
  const tabAchat = document.getElementById('tab-achat');
  const tabInfo = document.getElementById('tab-infos');
  const vente = document.getElementById('vente');
  const achat = document.getElementById('achat');
  const info = document.getElementById('infos');
  tabInfo.addEventListener("click", (event) => {
      tabVente.classList.remove("tab-active");
      tabAchat.classList.remove("tab-active");
      tabInfo.classList.toggle("tab-active");
      vente.classList.add("hidden");
      achat.classList.add("hidden");
      info.classList.toggle("hidden");
  })
}

const initToggleActiveTabsAchat = () => {
  const tabVente = document.getElementById('tab-vente');
  const tabAchat = document.getElementById('tab-achat');
  const tabInfo = document.getElementById('tab-infos');
  const vente = document.getElementById('vente');
  const achat = document.getElementById('achat');
  const info = document.getElementById('infos');
  tabAchat.addEventListener("click", (event) => {
      tabVente.classList.remove("tab-active");
      tabAchat.classList.toggle("tab-active");
      tabInfo.classList.remove("tab-active");
      vente.classList.add("hidden");
      achat.classList.toggle("hidden");
      info.classList.add("hidden");
  })
}


export { initToggleActiveTabsVente };
export { initToggleActiveTabsAchat };
export { initToggleActiveTabsInfos };
