function googleTranslateElementInit() {
            new google.translate.TranslateElement(
                {
                    pageLanguage: "en",
                    includedLanguages: "en,am,om",
                    layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
                    autoDisplay: false,
                },
                "google_translate_element"
            );

            var englishParagraph = document.getElementById("english_paragraph");
            if (englishParagraph) {
                google.translate.TranslateElement(
                    { pageLanguage: "en" },
                    "english_paragraph"
                );
            }
        }