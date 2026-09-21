// * location

function renderCities(selectedCountry) {
  const country = document.getElementById("countryList").tomselect;
  const cityList = document.getElementById("citiesList").tomselect;

  if (country && cityList) {
    if (selectedCountry) {
      fetch(`/api/get-cities?country=${encodeURIComponent(selectedCountry)}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Network error");
          }
          return response.json(); // عمل Parse تلقائي للـ JSON
        })
        .then((cities) => {
          cityList.clear();
          cityList.clearOptions();
          cityList.disable();
          cityList.addOption({
            value: "",
            text: "Loading cities...",
          });
          cityList.refreshOptions(false);

          if (cities.length === 0) {
            cityList.clearOptions();
            cityList.addOption({
              value: "",
              text: "No cities available",
            });
            cityList.refreshOptions(false);
          } else {
            cityList.clearOptions();
            cities.forEach((city) => {
              cityList.addOption({ value: city.toLowerCase(), text: city });
            });
            cityList.refreshOptions(false);
            if (country.input.dataset.myCountry != selectedCountry) {
              keys = Object.keys(cityList.options);
              rnd = Math.floor(Math.random() * (keys.length - 2)) + 1;
              if (keys[rnd]) cityList.setValue(keys[rnd]);
              cityList.refreshOptions(false);
            } else {
              cityList.setValue(cityList.input.dataset.myCity);
              cityList.refreshOptions(false);
            }
          }
        })
        .catch((error) => {
          console.error("Error fetching cities:", error);
          cityList.addOption({
            value: "",
            text: "Error loading cities",
          });
          cityList.refreshOptions(false);
        })
        .finally(() => {
          cityList.enable();
        });
    }
  }
}
// const country = document.getElementById("countryList").tomselect;
// if (country)
//   document.addEventListener("DOMContentLoaded", () => {
//     country.dispatchEvent(new Event("change"));
//   });

function manageLocationMenu() {
  const countryCheck = document.getElementById("countryList");
  const cityListCheck = document.getElementById("citiesList");
  const applyBtn =
    document.getElementById("applyLocationBtn") ||
    document.getElementById("save_company_edits");
  const locationLabel = document.getElementById("currentLocationLabel");
  if (countryCheck && cityListCheck) {
    const country = countryCheck.tomselect;
    const cityList = cityListCheck.tomselect;
    if (applyBtn) {
      applyBtn.addEventListener("click", () => {
        const selectedCity = cityList.getValue();
        const selectedCountryName = country.options[country.getValue()].text;

        locationLabel.textContent = `${selectedCity}, ${selectedCountryName}`;

        const modalEl = document.getElementById("locationModal");
        const modalInstance = bootstrap.Modal.getInstance(modalEl);
        modalInstance.hide();

        const pramams = new URLSearchParams(window.location.search);
        const compName = document.getElementById("company_name");
        const category = document.getElementById("regCategory");
        if (compName && category) {
          pramams.set("comp_name", compName.value);
          pramams.set("cat", category.value);
        }
        fetch(
          `/changeLocation?location=${window.location.pathname + "?" + pramams.toString()}&selectedCity=${selectedCity}&selectedCountryName=${selectedCountryName}`,
        )
          .then((response) => {
            if (!response.ok) {
              throw new Error("Network response was not ok");
            }
            return response.text(); // قراءة الـ String القادم من السيرفر
          })
          .then((newUrl) => {
            if (newUrl) {
              window.location.href = newUrl.trim(); // إعادة التوجيه للرابط الجديد
            }
          })
          .catch((error) => {
            console.error("Error redirecting:", error);
          });

        loadServicesByCity(selectedCity);
      });

      country.on("change", function () {
        const selectedCountry = this.getValue();
        renderCities(selectedCountry);
      });
    }
  }
}
