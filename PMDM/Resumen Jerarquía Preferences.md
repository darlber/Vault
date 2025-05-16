PreferenceActivity (con headers)
└── PreferenceHeaders (XML: preferences_headers.xml)
    ├── Header: "Preferencias generales"
    │   └── PreferenceFragment (R.xml.pref_generales)
    │       ├── EditTextPreference
    │       └── CheckBoxPreference
    ├── Header: "Notificaciones"
    │   └── PreferenceFragment (R.xml.pref_notificaciones)
    │       └── SwitchPreference
    └── Header: "Cuenta"
        └── PreferenceFragment (R.xml.pref_cuenta)
            └── ListPreference

| Tipo de Preference                                   | Descripción                                                                                                  |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| 🔤 **`EditTextPreference`**                          | Permite al usuario introducir texto libre. Ideal para nombres, emails, etc.                                  |
| ✅ **`CheckBoxPreference`**                           | Booleano (sí/no). Se muestra como un checkbox. **Deprecated**, se recomienda `SwitchPreferenceCompat`.       |
| 🔄 **`SwitchPreference` / `SwitchPreferenceCompat`** | Alternativa moderna al checkbox. Conmutador tipo "on/off".                                                   |
| 📜 **`ListPreference`**                              | Muestra una lista desplegable de opciones; el usuario puede seleccionar **una sola**.                        |
| 🧾 **`MultiSelectListPreference`**                   | Permite seleccionar **múltiples** opciones de una lista.                                                     |
| 📁 **`RingtonePreference`**                          | Permite al usuario seleccionar un tono del sistema.                                                          |
| ⏰ **`TimePreference` / `DatePreference`** _(custom)_ | No existen nativamente pero pueden implementarse como preferencias personalizadas para elegir hora o fecha.  |
Desde Android 10 (API 29), estas clases están oficialmente **deprecated** y se recomienda migrar a la biblioteca **AndroidX Preference**, que ofrece una solución más moderna, compatible y flexible.