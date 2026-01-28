# ios
Frontend for iOS

## Swift Package: NAHUI

В этом репозитории содержится прототип SPM‑пакета `NAHUI`, который предоставляет простой переиспользуемый SwiftUI‑компонент для ввода текста.

### Структура пакета

- **`Package.swift`** — описание Swift Package с продуктом‑библиотекой `NAHUI`.
- **`Sources/NAHUI/SimpleTextFieldView.swift`** — реализация SwiftUI‑вью `SimpleTextFieldView`.
- **`Tests/NAHUITests`** — базовые тесты для компонента.

### Подключение пакета в Xcode

1. Откройте ваше iOS‑приложение в Xcode.
2. В меню выберите **File → Add Packages...**.
3. Нажмите **Add Local...**.
4. Укажите путь к папке этого репозитория (`ios`, где лежит `Package.swift`).
5. Добавьте продукт **`NAHUI`** к целевому приложению.

### Использование в SwiftUI‑коде

1. Импортируйте модуль в нужном файле:

```swift
import SwiftUI
import NAHUI
```

2. Используйте `SimpleTextFieldView` в своей вью:

```swift
struct ContentView: View {
    @State private var name = ""

    var body: some View {
        SimpleTextFieldView(
            text: $name,
            title: "Имя",
            placeholder: "Введите имя"
        )
        .padding()
    }
}
```

### Параметры `SimpleTextFieldView`

- **`text: Binding<String>`** — привязка к состоянию, в котором хранится введённый текст.
- **`title: String`** — опциональный заголовок над полем (по умолчанию пустая строка).
- **`placeholder: String`** — опциональный плейсхолдер, показывается, когда текст пустой.

### Требования

- **iOS**: 15.0+
- **Swift**: 5.9+

