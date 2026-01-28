import XCTest
@testable import NAHUI
import SwiftUI

final class SimpleTextFieldTests: XCTestCase {
    func test_init_doesNotCrash() {
        // Базовый "дымовый" тест, что вью можно создать.
        let binding = Binding<String>(
            get: { "" },
            set: { _ in }
        )

        _ = SimpleTextFieldView(
            text: binding,
            title: "Тест",
            placeholder: "Плейсхолдер"
        )
    }
}

