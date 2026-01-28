import SwiftUI

/// Простой переиспользуемый текстовый инпут для SwiftUI.
public struct SimpleTextFieldView: View {
    @Binding private var text: String
    private let title: String
    private let placeholder: String

    public init(
        text: Binding<String>,
        title: String = "",
        placeholder: String = ""
    ) {
        self._text = text
        self.title = title
        self.placeholder = placeholder
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            if !title.isEmpty {
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            ZStack(alignment: .leading) {
                if text.isEmpty && !placeholder.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.secondary.opacity(0.6))
                }

                TextField("", text: $text)
                    .textFieldStyle(.plain)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.secondary.opacity(0.3), lineWidth: 1)
            )
        }
    }
}

#if DEBUG
struct SimpleTextFieldView_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State private var text: String = ""

        var body: some View {
            SimpleTextFieldView(
                text: $text,
                title: "Имя",
                placeholder: "Введите имя"
            )
            .padding()
        }
    }

    static var previews: some View {
        PreviewWrapper()
            .previewLayout(.sizeThatFits)
    }
}
#endif

