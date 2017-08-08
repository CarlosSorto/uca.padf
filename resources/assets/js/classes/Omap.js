class OMfunction() {
  let Omap;
  const OrganizationList = modulejs.require('modules/components/OrganizationList');
  return (Omap = class Omap {

    constructor(){
      this.setElements();
      this.selectVmapRegion();
      this.setVmapFocusRegion();
      this.setEvents();
      this.search();
    }

    search(){
      const data = {
        filter: {
          q: {
            "active|scp": 1,
            "countryCodeEq|scp": this.countrySelect.val(),
            "workareaIdsIn|scp": this.workareaInput.val(),
            "includeAll|scp": 1,
            "searchCont|scp": this.nameInput.val()
          }
        }
      };
      return this.listView.search(data);
    }

    setElements() {
      this.organizations = [];
      this.countryCodes = [];
      this.workareaInput = $('#workarea_id');
      this.submitBtn = $('#search-submit');
      this.nameInput = $('#name');
      this.countrySelect = $('#country_id');
      this.organizationsEl = $('#organizations-list');
      this.listView = new OrganizationList({
        el: this.organizationsEl.get(0),
        data: {
          organizations: this.organizations
        }
      });

      this.countrySelect.find("option").each((index, item) => {
        item = $(item);
        return this.countryCodes.push(item.val());
      });

      this.mapEl = $('#organizations-map');
      this.mapEl.height('300px');
      this.mapEl.vectorMap({
        map: 'world_mill',
        zoomOnScroll: true,
        regionsSelectable: true,
        regionsSelectableOne: true,
        onRegionSelected: (event, code, isSelected, selectedRegions) => {
          if (isSelected) {
            if (this.countryCodes.indexOf(code) > 0) {
              return this.countrySelect.val(code);
            }
          }
        }
      });

      return this.vmap = this.mapEl.vectorMap('get', 'mapObject');
    }


    setVmapFocusRegion(value){
      if (value == null) { value = 'SV'; }
      return this.mapEl.vectorMap('set', 'focus', {region: value});
    }

    selectVmapRegion(value){
      if (value == null) { value = 'SV'; }
      return this.vmap['regions'][value].element.setSelected(true);
    }

    setEvents() {
      this.submitBtn.on('click', e=> {
        e.preventDefault();
        return this.search();
      });

      return this.countrySelect.on('change', () => {
        if (this.countrySelect.val() === '') {
          return this.vmap.clearSelectedRegions();
        } else {
          this.vmap.clearSelectedRegions();
          return this.selectVmapRegion(this.countrySelect.val());
        }
      });
    }
  });
});
