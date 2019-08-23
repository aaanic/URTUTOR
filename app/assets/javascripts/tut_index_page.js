const filterContainer = document.querySelector('.filter-container');
  const filterCover = document.querySelector('.filter-cover');
  const hideShowFilter = () => {
    console.log("working?");
    filterCover.remove();
  };

  filterCover.addEventListener('click', hideShowFilter);

  const select = document.querySelector('select')
  const cards = [];

  const generateCards = () => {
    const rawCards = document.querySelectorAll('.box');
    rawCards.forEach((card) => {
      const some = new Object;
      some.html = card;
      some.category = card.querySelector('.category').innerText;
      cards.push(some);
    })
  };

  const filterCards = (filter) => {
    cards.forEach((card) => {
      console.log(`the filter: ${filter}, category: ${card.category}`)
      console.log(card.category == filter)
      if (card.category == filter) {
        card.html.style.display = 'block';
        card.html.hidden = false;
      } else {
        card.html.style.display = 'none';
        card.html.hidden = true;
      }
    })
  };

  const getBackAllCards = () => {
    cards.forEach((card) => {
      card.html.hidden = false;
      card.html.style.display = 'block';
    })
  };

  generateCards();
  select.onchange = function(){
    getBackAllCards();
    const fuckYes = select.selectedOptions[0].innerText;
    filterCards(fuckYes);
  };

  const resetFilter = document.querySelector('.reset-filter')
  resetFilter.addEventListener('click', getBackAllCards)
