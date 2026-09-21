let email = document.getElementById("mail");
const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
const menu = document.getElementById("menu");
const menuButton = document.getElementById("menuButton");
const arrow = document.querySelector(".bi-caret-down-fill")

if (menu && menuButton) {
  menuButton.addEventListener("click", e =>{
    menu.classList.toggle("none");
    arrow.classList.toggle("up");
  });
  document.addEventListener("click", e => {
    if (!menuButton.contains(e.target) && !menu.contains(e.target)) {
      menu.classList.add("none");
      arrow.classList.remove("up");
    }
  });
}
// ! Error message toast

function showToast(message, type="error") {
  const container = document.getElementById("toastContainer");
  const toast = document.createElement("div");
  toast.classList = `custom-toast type-${type}`
  const icon = type === 'error' ? '⚠️' : '✅';
  toast.innerHTML = `
    <span class="toast-icon">${icon}</span>
    <span class="toast-message">${message}</span>
  `;
  container.appendChild(toast)

  setTimeout(() => {
    toast.classList.add('show');
  }, 10);
  
  setTimeout(() => {
    toast.classList.remove('show');
      
    setTimeout(() => {
      toast.remove();
    }, 1000); 
  }, 4000);
}
function showError(input, message, type="notTom") {
  let inp;
  if (type == "Tom") {
    inp = input.wrapper;
  }
  else {
    inp = input
  }
  inp.classList.add("input-error");

  let error = inp.parentElement.querySelector(".field-error");

  if (!error) {
    error = document.createElement("small");
    error.className = "field-error";
    inp.parentElement.appendChild(error);
  }

  error.textContent = "⚠ " + message;
  error.style.display = "block";
}

function clearError(input, type="notTom") {
  let inp;
  if (type == "Tom") {
    inp = input.wrapper;
  } else {
    inp = input;
  }
  inp.classList.remove("input-error");

  const error = inp.parentElement.querySelector(".field-error");

  if (error) {
    error.style.display = "none";
  }
}
// * validation sec
  // ! rigister
rEmail = document.getElementById("registerEmail");
rName = document.getElementById("registerName");
rPass = document.getElementById("registerPass");
rConfirmation = document.getElementById("registerConfirmation");

if (rEmail && rName && rPass && rConfirmation) {
  // * register validation
}

// * category in find queue

document.querySelectorAll(".category_btn").forEach(btn => {
  btn.addEventListener("click", function() {
    document.querySelector(".category_btn.active").classList.remove("active");
    this.classList.add("active");
    const pramams = new URLSearchParams(window.location.search)
    pramams.set("category", this.dataset.cat);
    window.location.href = `${window.location.pathname}?${pramams.toString()}`
  });
});

// * search in find queue

const search = document.getElementById("search");
const searchArea = document.getElementById("searchArea");
const clearBtn = document.getElementById("clearBtn");
let isSubmitting = false;
if (searchArea && clearBtn) {
  search.addEventListener("submit", (e) => {
    e.preventDefault()
    isSubmitting = true;
    const q = searchArea.value
    const pramams = new URLSearchParams(window.location.search)
    pramams.set("q", q);
    window.location.href = `${window.location.pathname}?${pramams.toString()}`;
  });
  searchArea.addEventListener("blur", (e) => {
    setTimeout( () => {
      if (isSubmitting) return;
      if (e.relatedTarget && search.contains(e.relatedTarget)) return;
      const pramams = new URLSearchParams(window.location.search);
      if (pramams.has("q")) {
        searchArea.value = pramams.get("q");
      }
    }, 0);
    });
  const pramams = new URLSearchParams(window.location.search);
  if (pramams.has("q")) {
    searchArea.value = pramams.get("q");
  }
  
  function clearQ() {
    if (searchArea.value.length > 0) {
      clearBtn.style.display = "block";
    } else {
      clearBtn.style.display = "none";
    }
  }
  clearQ()
  searchArea.addEventListener("blur", clearQ)

  clearBtn.addEventListener("click", () => {
    searchArea.value = "";
    clearBtn.style.display = "none";
    const pramams = new URLSearchParams(window.location.search);
    pramams.delete("q");
    window.location.href = `${window.location.pathname}?${pramams.toString()}`;
  });
}
// * location

function renderCities(selectedCountry) {
  const country = document.getElementById("countryList").tomselect;
  const cityList = document.getElementById("citiesList").tomselect;

  if (country && cityList) {
    if (selectedCountry) {
      cityList.clear();
      cityList.clearOptions();
      cityList.disable();
      cityList.addOption({
        value: "",
        text: "Loading cities...",
      });
      cityList.refreshOptions(false);
      fetch(`/api/get-cities?country=${encodeURIComponent(selectedCountry)}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Network error");
          }
          return response.json(); // عمل Parse تلقائي للـ JSON
        })
        .then((cities) => {
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
                if (keys[rnd])
                  cityList.setValue(keys[rnd]);
                cityList.refreshOptions(false);
              }
              else {
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
  const applyBtn = document.getElementById("applyLocationBtn");
    // document.getElementById("save_company_edits");
  const locationLabel = document.getElementById("currentLocationLabel");
  if (countryCheck && cityListCheck) {
    const country = countryCheck.tomselect;
    const cityList = cityListCheck.tomselect;

    country.on("change", function () {
      const selectedCountry = this.getValue();
      renderCities(selectedCountry);
    });

    if (applyBtn) {
      applyBtn.addEventListener("click", () => {
        const selectedCity = cityList.getValue();
        const selectedCountryName = country.getValue();
        if (locationLabel) {
          locationLabel.textContent = `${selectedCity}, ${selectedCountryName}`;
        }
        const modalEl = document.getElementById("locationModal");
        const modalInstance = bootstrap.Modal.getInstance(modalEl);
        if (modalInstance) {
          modalInstance.hide();
        }

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
            let url;
            if (newUrl) {
              const countryMatches = newUrl.match(/country=/g);
              if (countryMatches && countryMatches.length >= 2) {
                url = newUrl.replace(/country=[^&]*&/, "");
              }
              window.location.href = url.trim();
            }
          })
          .catch((error) => {
            console.error("Error redirecting:", error);
          });

        loadServicesByCity(selectedCity);
        });
        
    }
  }
}

document.addEventListener("DOMContentLoaded", manageLocationMenu);
  // ! edite company data

document.addEventListener("DOMContentLoaded", () => {
  const saveCompBtn = document.getElementById("save_company_edits");
  if (saveCompBtn) {
    const form = document.getElementById("company_edits");
    const name = document.getElementById("cName");
    let isname = 0;
    const cat = document.getElementById("cCategory");
    let iscat = 0;
    const country = document.getElementById("countryList").tomselect;
    let iscountry = 0;
    const city = document.getElementById("citiesList").tomselect;
    let iscity = 0;
    const open = document.getElementById("cOpen");
    let isopen = 1;
    const close = document.getElementById("cClose");
    let isclose = 1;
    const check = document.getElementById("is_24_hours");
    let ischeck = 0;
    const address = document.getElementById("cAddress");
    let isaddress = 1;
    const phone = document.getElementById("cPhone");
    let isphone = 1;
    const desc = document.getElementById("cDescription");
    let isdesc = 1;

    function timeToMinutes(timeStr) {
      if (!timeStr) return null;
      const [hours, minutes] = timeStr.split(":").map(Number);
      return hours * 60 + minutes;
    }

    name.addEventListener("blur", () => {
      if (!name.value || name.value.length > 100 || name.value.length <= 2) {
        showError(name, "Company name must be between 2 and 100 characters.");
        isname = 0;
      }
    });
    name.addEventListener("input", () => {
      if (!(!name.value || name.value.length > 100 || name.value.length <= 2)) {
        clearError(name);
        isname = 1;
      }
    });

    opts = [
      "clinics",
      "banks",
      "government_offices",
      "telecom",
      "edu",
      "other",
    ];
    cat.addEventListener("blur", () => {
      if (!opts.includes(cat.value)) {
        showError(cat, "Please select a valid category.");
        iscat = 0;
      }
    });
    cat.addEventListener("input", () => {
      if (opts.includes(cat.value)) {
        clearError(cat);
        iscat = 1;
      }
    });

    // let countries = [];
    // fetch("./static/countries.json")
    //   .then((response) => {
    //     if (!response.ok) throw new Error("File not found");
    //     return response.json();
    //   })
    //   .then((data) => {
    //     countries = data;
    //   })
    //   .catch((err) => console.error("Error reading file:", err));

    // function ifIn(ref, test) {
    //   len = ref.length;
    //   for (let i = 0; i < len; i++)
    //     if (test.value.trim().toLowerCase() == ref[i]["name"].trim().toLowerCase()) {
    //       return true;
    //     }
    //   return false;
    // }
     // !
    country.on("blur", () => {
      // found = false
      // found = ifIn(countries, country);
      const value = country.getValue();

      if (!value || value.trim() === "") {
        showError(country, "Please select a valid country.", "Tom");
        iscountry = 0;
      }
    });
    country.on("change", (value) => {
      // found = false
      // found = ifIn(countries, country);
      if (value && value.trim() !== "") {
        clearError(country, "Tom");
        iscountry = 1;
      } else {
        iscountry = 0;
      }
    });

    city.on("blur", () => {
      const value = city.getValue();

      if (!value || value.trim() === "") {
        showError(city, "Please select a valid city.", "Tom");
        iscity = 0;
      }
    });
    city.on("change", (value) => {
      if (value && value.trim() !== "") {
        clearError(city, "Tom");
        iscity = 1;
      } else {
        iscity = 0;
      }
    });

    open.addEventListener("blur", () => {
      const valueO = open.value;

      if (valueO) {
        if (!close.value) {
          showError(close, "Please provide a closing time.");
          isopen = 0;
        }
      } 
      else {
        clearError(close);
        isopen = 1;
      }
    });
    open.addEventListener("input", () => {
      const value = open.value;
      if (value) {
        if (close.value) {
          clearError(close);
          clearError(open);
          isopen = 1;
          isclose = 1;
        }
      } 
      else {
        clearError(close);
        isopen = 1;
      }
    });

    close.addEventListener("blur", () => {
      const valueC = close.value;

      if (valueC) {
        if (!open.value) {
          showError(open, "Please provide an opening time.");
          isclose = 0;
        }
      } else {
        clearError(open);
        isclose = 1;
      }
    });
    close.addEventListener("input", () => {
      const value = close.value;
      if (value) {
        if (open.value) {
          clearError(open);
          clearError(close)
          isclose = 1;
          isopen = 1
        }
      } else {
        clearError(open);
        isclose = 1;
      }
    });

    check.addEventListener("change", function () {
      if (this.checked) {
        open.value = ""
        close.value = ""
        open.disabled = true;
        close.disabled = true;
        clearError(open);
        clearError(close);
        ischeck = 1;
        isopen = 1;
        isclose = 1;
      } else {
        open.disabled = false;
        close.disabled = false;
        ischeck = 0;
        isopen = 0;
        isclose = 0;
      }
    });

    address.addEventListener("blur", () => {
      const value = address.value;

      if (value) {
        if (value.length > 100 || value.length <= 5) {
          showError(address, "address must be between 5 and 100 characters.");
          isaddress = 0;
        }
      } else {
        clearError(address);
        isaddress = 1;
      }
    });
    address.addEventListener("input", () => {
      const value = address.value;
      if (value) {
        if (!(value.length > 100 || value.length <= 5)) {
          clearError(address);
          isaddress = 1;
        }
      } else {
        clearError(address);
        isaddress = 1;
      }
    });

    const rgxPhone = /^[0-9+\-\s()]{5,20}$/;
    phone.addEventListener("blur", () => {
      const value = phone.value;
      if (value) {
        if (!rgxPhone.test(value) || !/\d/.test(value)) {
          showError(phone, "Invalid phone number.");
          isphone = 0;
        }
      } else {
        clearError(phone);
        isphone = 1;
      }
    });
    phone.addEventListener("input", () => {
      const value = phone.value;
      if (value) {
        if (!(!rgxPhone.test(value) || !/\d/.test(value))) {
          clearError(phone);
          isphone = 1;
        }
      } else {
        clearError(phone);
        isphone = 1;
      }
    });

    desc.addEventListener("blur", () => {
      const value = desc.value;
      if (value) {
        if (value.length > 250 || value.length <= 10) {
          showError(
            desc,
            "Company description must be between 10 and 250 characters.",
          );
          isdesc = 0;
        }
      } else {
        clearError(desc);
        isdesc = 1;
      }
    });
    desc.addEventListener("input", () => {
      const value = desc.value;
      if (value) {
        if (!(value.length > 250 || value.length <= 10)) {
          clearError(desc);
          isdesc = 1;
        }
      } else {
        clearError(desc);
        isdesc = 1;
      }
    });

    form.addEventListener("submit", (e) => {
      if (!check.checked) {
        const oVal = open.value.trim();
        const cVal = close.value.trim();

        // 1. لو دخل واحد وساب التاني فاضي: وقف فوراً
        if ((oVal && !cVal) || (!oVal && cVal)) {
          if (!oVal) showError(open, "Please provide an opening time.");
          if (!cVal) showError(close, "Please provide a closing time.");
          isopen = 0;
          isclose = 0;
          e.preventDefault();
          e.stopPropagation();
          return;
        }

        if (oVal && cVal) {
          const openMinutes = timeToMinutes(oVal);
          const closeMinutes = timeToMinutes(cVal);

          if (Math.abs(closeMinutes - openMinutes) < 30) {
            showError(open, "Shift must be at least 30 minutes.");
            showError(close, "Shift must be at least 30 minutes.");
            isopen = 0;
            isclose = 0;
            e.preventDefault();
            e.stopPropagation();
            return;
          } 
          else {
            clearError(open);
            clearError(close);
            isopen = 1;
            isclose = 1;
          }
        } 
        else {
          // الاتنين فاضيين تماماً (مسموح)
          clearError(open);
          clearError(close);
          isopen = 1;
          isclose = 1;
        }
      }
      if (!(!name.value || name.value.length > 100 || name.value.length <= 2)) {
        clearError(name);
        isname = 1;
      } else {
        showError(name, "Company name must be between 2 and 100 characters.");
        isname = 0;
      }
      if (opts.includes(cat.value)) {
        clearError(cat);
        iscat = 1;
      } else {
        showError(cat, "Please select a valid category.");
        iscat = 0;
      }
      if (country.getValue() && country.getValue().trim() !== "") {
        clearError(country, "Tom");
        iscountry = 1;
      } else {
        showError(country, "Please select a valid country.", "Tom");
        iscountry = 0;
      }
      if (city.getValue() && city.getValue().trim() !== "") {
        clearError(city, "Tom");
        iscity = 1;
      } else {
        showError(city, "Please select a valid city.", "Tom");
        iscity = 0;
      }
      if (
        !(
          isname &&
          iscat &&
          iscountry &&
          iscity &&
          isopen &&
          isclose &&
          isaddress &&
          isphone &&
          isdesc
        )
      ) {
        e.preventDefault();
        e.stopPropagation();
        return;
      }
      saveCompBtn.disabled = true;
      saveCompBtn.textContent = "Saving...";
      // const modalEl = document.getElementById("locationModal");
      // const modalInstance = bootstrap.Modal.getInstance(modalEl);
      // modalInstance.hide();
    });
  }
});

// ! location with profile page
document.addEventListener("DOMContentLoaded", () => {
  const pramams = new URLSearchParams(window.location.search);
  if (pramams.has("comp_name") && pramams.has("cat")) {
    const compName = document.getElementById("company_name");
    const category = document.getElementById("regCategory");
    if (compName && category) {
      compName.value = pramams.get("comp_name");
      category.value = pramams.get("cat");
    }
  }
});
// ! copy & past
const countrySelect = document.getElementById('countryList');
const citySelect = document.getElementById('citiesList');
// // 1. تحديث المدن لما الدولة تتغير
// countrySelect.addEventListener('change', async () => {
//   const countryCode = countrySelect.value;
  
//   // طلب المدن من الـ Endpoint الداخلية الخاصة بك
//   const response = await fetch(`/api/cities?country=${countryCode}`);
//   const cities = await response.json();

//   // تفريغ القائمة الحالية وإضافة المدن الجديدة
//   citySelect.innerHTML = '';
//   cities.forEach(city => {
//     const opt = document.createElement('option');
//     opt.value = city.name;
//     opt.textContent = city.name;
//     citySelect.appendChild(opt);
//   });
// });

function loadServicesByCity(cityName) {
  console.log("Filtering cards for:", cityName);
  // fetch services for this city and update the DOM
}
// ! auto reload sec
// function autoReloadInf(route) {
//   fetch(route);
//   setInterval(autoReloadInf
//     , 30000
//   );
// }
// function autoReload(route) {
//   fetch(route);
// }
