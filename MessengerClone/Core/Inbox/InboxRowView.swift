import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment: .leading) {
                Text("Joker")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("Some text message for now")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            Spacer()
            Text("10:00 AM")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    InboxRowView()
}
