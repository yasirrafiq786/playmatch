const initAlgoliaSearch = () => {
  const searchBar = document.querySelector('#search-input');
  if (searchBar) {
    var client = algoliasearch(searchBar.dataset.algoliaid, searchBar.dataset.algoliasearchkey);
    var index = client.initIndex('Sport');
    autocomplete('#search-input', { hint: false }, [
      {
        source: autocomplete.sources.hits(index, { hitsPerPage: 10 }),
        displayKey: 'name',
        templates: {
          suggestion: function (suggestion) {
            console.log(suggestion._highlightResult.name.value);
            // Change the return here to whatever you wish to be displayed in the dropdown
            return suggestion._highlightResult.name.value;
          }
        }
      }
    ]).on('autocomplete:selected', function (event, suggestion, dataset) {
      
    });
  }
}

export { initAlgoliaSearch };