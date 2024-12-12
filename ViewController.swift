//
//  ViewController.swift
//  HW13
//
//  Created by Елена Карпиленко on 10/12/24.
//

import SwiftUI


// Модель для карточек


// Пример данных
let wineCards: [WineCard] = [
    WineCard(imageName: "img_5", title: "Красное Вино 1", description: "Это насыщенное и глубокое вино с богатым ароматом ягод и специй. Отличается мягким вкусом с легкими танинами, идеально сочетается с мясными блюдами.", category: "Красное"),
       WineCard(imageName: "vino", title: "Красное Вино 2", description: "Вино с интенсивным рубиновым цветом и ароматами вишни и черного перца. Вкус полнотелый с хорошо сбалансированной кислотностью, подходящее к пасте и пицце.", category: "Красное"),
       WineCard(imageName: "vino5", title: "Красное Вино 3", description: " Слегка пряное вино с ароматами черной смородины и дуба. Идеально сочетается с жареным мясом или сырами с интенсивным вкусом.", category: "Красное"),
       WineCard(imageName: "vino6", title: "Красное Вино 4", description: "vino11", category: "Красное"),
    // Красное
    WineCard(imageName: "vino11", title: "Красное Вино 1", description: "Этот сорт вина отличается мягкими танинами и ароматом темных ягод с легким послевкусием ванили. Прекрасно подходит к тушеному мясу.", category: "Красное"),
    WineCard(imageName: "image", title: "Красное Вино 2", description: "Этот сорт вина отличается мягкими танинами и ароматом темных ягод с легким послевкусием ванили. Прекрасно подходит к тушеному мясу.", category: "Красное"),
    WineCard(imageName: "img_3", title: "Красное Вино 3", description: "Этот сорт вина отличается мягкими танинами и ароматом темных ягод с легким послевкусием ванили. Прекрасно подходит к тушеному мясу.", category: "Красное"),
    WineCard(imageName: "img_4", title: "Красное Вино 4", description: "Этот сорт вина отличается мягкими танинами и ароматом темных ягод с легким послевкусием ванили. Прекрасно подходит к тушеному мясу.", category: "Красное"),
    WineCard(imageName: "img_5", title: "Красное Вино 5", description: "Описание 5", category: "Красное"),
    WineCard(imageName: "img_6", title: "Красное Вино 6", description: "Описание 6", category: "Красное"),
    WineCard(imageName: "img_7", title: "Красное Вино 7", description: "Описание 7", category: "Красное"),
    WineCard(imageName: "img_8", title: "Красное Вино 8", description: "Описание 8", category: "Красное"),
    WineCard(imageName: "img_9", title: "Красное Вино 9", description: "Описание 9", category: "Красное"),
    WineCard(imageName: "img_10", title: "Красное Вино 10", description: "Описание 10", category: "Красное"),
    WineCard(imageName: "img_11", title: "Красное Вино 11", description: "Описание 11", category: "Красное"),
    WineCard(imageName: "img_12", title: "Красное Вино 12", description: "Описание 12", category: "Красное"),
    WineCard(imageName: "img_13", title: "Красное Вино 13", description: "Описание 13", category: "Красное"),
    WineCard(imageName: "img_14", title: "Красное Вино 14", description: "Описание 14", category: "Красное"),
    WineCard(imageName: "img_15", title: "Красное Вино 15", description: "Описание 15", category: "Красное"),
    WineCard(imageName: "img_16", title: "Красное Вино 16", description: "Описание 16", category: "Красное"),
    WineCard(imageName: "img_17", title: "Красное Вино 17", description: "Описание 17", category: "Красное"),
    WineCard(imageName: "img_18", title: "Красное Вино 18", description: "Описание 18", category: "Красное"),
    WineCard(imageName: "img_19", title: "Красное Вино 19", description: "Описание 19", category: "Красное"),
    WineCard(imageName: "img_20", title: "Красное Вино 20", description: "Описание 20", category: "Красное"),

    // Белое
    WineCard(imageName: "vino11", title: "Белое Вино 1", description: "Легкое и свежее вино с ароматами цитрусовых и зелени. Прекрасно подходит к морепродуктам и свежим салатам.", category: "Белое"),
    WineCard(imageName: "vino", title: "Белое Вино 2", description: "Вино с нотами яблок и груши, с освежающей кислотностью. Отлично сочетается с куриным филе и пастой с соусом на основе сливок.", category: "Белое"),
    WineCard(imageName: "vino5", title: "Белое Вино 3", description: "Вино с выраженными ароматами тропических фруктов и легким цветочным оттенком. Идеально сочетается с рыбой и морепродуктами.", category: "Белое"),
    WineCard(imageName: "vino6", title: "Белое Вино 4", description: "Чистый и яркий вкус с нотами персика и цитрусовых. Отличное дополнение к блюдам из креветок или легким овощным салатам.", category: "Белое"),
    // (добавьте аналогично еще 16 карточек для белого вина)
    WineCard(imageName: "vino11", title: "Белое Вино 1", description: "Легкое и свежее вино с ароматами цитрусовых и зелени. Прекрасно подходит к морепродуктам и свежим салатам.", category: "Белое"),
    WineCard(imageName: "vino", title: "Белое Вино 2", description: "Вино с нотами яблок и груши, с освежающей кислотностью. Отлично сочетается с куриным филе и пастой с соусом на основе сливок.", category: "Белое"),
    WineCard(imageName: "vino5", title: "Белое Вино 3", description: "Вино с выраженными ароматами тропических фруктов и легким цветочным оттенком. Идеально сочетается с рыбой и морепродуктами.", category: "Белое"),
    WineCard(imageName: "vino6", title: "Белое Вино 4", description: "Чистый и яркий вкус с нотами персика и цитрусовых. Отличное дополнение к блюдам из креветок или легким овощным салатам.", category: "Белое"),
    // (добавьте аналогично еще 16 карточек для белого вина)

    // Игристое
    WineCard(imageName: "vino11", title: "Игристое Вино 1", description: " Легкое игристое вино с яркими пузырьками и ароматом белых цветов и цитрусов. Идеально для праздников и аперитивов.", category: "Игристое"),
    WineCard(imageName: "vino", title: "Игристое Вино 2", description: "Слегка сладковатое игристое вино с нотами меда и фруктов. Отлично подходит к десертам или фруктовым салатам.", category: "Игристое"),
    WineCard(imageName: "vino5", title: "Игристое Вино 3", description: "Сухое игристое вино с приятной кислинкой и вкусом зеленого яблока. Прекрасно сочетается с сырами и морепродуктами.", category: "Игристое"),
    WineCard(imageName: "vino6", title: "Игристое Вино 4", description: "Вино с интенсивным ароматом цитрусовых и легкими нотами миндаля. Идеальный выбор для закусок и легких блюд.", category: "Игристое"),
    WineCard(imageName: "vino11", title: "Игристое Вино 1", description: " Легкое игристое вино с яркими пузырьками и ароматом белых цветов и цитрусов. Идеально для праздников и аперитивов.", category: "Игристое"),
    WineCard(imageName: "vino", title: "Игристое Вино 2", description: "Слегка сладковатое игристое вино с нотами меда и фруктов. Отлично подходит к десертам или фруктовым салатам.", category: "Игристое"),
    WineCard(imageName: "vino5", title: "Игристое Вино 3", description: "Сухое игристое вино с приятной кислинкой и вкусом зеленого яблока. Прекрасно сочетается с сырами и морепродуктами.", category: "Игристое"),
    WineCard(imageName: "vino6", title: "Игристое Вино 4", description: "Вино с интенсивным ароматом цитрусовых и легкими нотами миндаля. Идеальный выбор для закусок и легких блюд.", category: "Игристое"),
    // (добавьте аналогично еще 16 карточек для игристого вина)
]

struct WineCard: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let category: String
    var isFavorite: Bool = false // Добавлено поле для избранного
}


struct ContentView: View {
    @State private var showBookCover = true
    @State private var selectedCategory: String = "Красное" // Категория по умолчанию
    @State private var favorites: [WineCard] = []  // Состояние избранного
    @State private var currentBannerIndex: Int = 0

    // Ваши изображения для баннера
    let images = ["vine34", "vina17", "vino15"]  // 3 изображения
    let titles = ["Title 1", "Title 2", "Title 3"]

    var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect() // Таймер для смены баннера

    // Фильтрация карточек по выбранной категории
    var filteredCards: [WineCard] {
        wineCards.filter { $0.category == selectedCategory }
    }
    

    var body: some View {
        NavigationView {
            VStack {
                // Навигация: Титул и кнопка сердечко
                HStack {
                    Text("Вина")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading, 16)

                    Spacer()

                    // Переход на экран избранного
                    NavigationLink(destination: FavoritesView(favorites: $favorites)) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 30))
                            .padding(.trailing, 16)
                    }
                }
                .padding(.top, 16) // Отступ сверху для титула и сердечка

                // Баннер
                AutoBannerSection(
                    titles: titles,
                    images: images,
                    currentIndex: $currentBannerIndex
                )
                .frame(height: 200) // Устанавливаем высоту для баннера
                .onReceive(timer) { _ in
                    withAnimation {
                        currentBannerIndex = (currentBannerIndex + 1) % images.count
                    }
                }
                

                // Верхняя панель с поиском
                TextField("Поиск", text: .constant(""))
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .overlay(
                        HStack {
                            Spacer()
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.trailing, 10)
                        }
                    )
                    .padding(.horizontal)
                

                // Кнопки фильтров
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(["Красное", "Белое", "Игристое"], id: \.self) { category in
                            Button(action: {
                                selectedCategory = category
                            }) {
                                Text(category)
                                    .padding()
                                    .frame(width: 130) // Фиксированная ширина для кнопки
                                    .background(
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(selectedCategory == category ? Color(hex: "#D82F75") : Color(hex: "#D82F75").opacity(0.7))
                                            .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 4)
                                    )
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 16)
                


                // Список карточек
                ScrollView {
                    LazyVStack(spacing: 24) {
                        ForEach(filteredCards) { card in
                            NavigationLink(destination: WineDetailView(card: card, favorites: $favorites)) {
                                WineCardView(card: card)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.white, Color(hex: "#FDDEF1")]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all) // Отключаем отступы
            )
        }
    }
}
struct WineCardView: View {
    let card: WineCard

    var body: some View {
        HStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 100)
                .cornerRadius(12) // Закругленные углы
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4) // Тень для объема

            VStack(alignment: .leading, spacing: 8) {
                Text(card.title)
                    .font(.headline)
                    .foregroundColor(Color.black)
                Text(card.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5) // Тень для фона
        )
        .padding(.horizontal) // Дополнительное расстояние по краям
    }
}

struct WineDetailView: View {
    let card: WineCard
    @Binding var favorites: [WineCard]

    var body: some View {
        VStack {
            // Картинка
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(15)
                .padding()
                .opacity(0.8) // Начальное состояние
                .animation(.easeInOut(duration: 0.5))
            
            // Текст с информацией о вине
            Text(card.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text(card.description)
                .font(.body)
                .foregroundColor(.gray)
                .padding(.horizontal)

            Spacer() // Разделитель для перемещения кнопки вниз

            // Кнопка добавления/удаления из избранного
            Button(action: {
                if favorites.contains(where: { $0.id == card.id }) {
                    favorites.removeAll { $0.id == card.id }  // Удаляем из избранного
                } else {
                    favorites.append(card)  // Добавляем в избранное
                }
            }) {
                Text(favorites.contains(where: { $0.id == card.id }) ? "Удалить из избранного" : "Добавить в избранное")
                    .frame(maxWidth: .infinity) // Занимает всю ширину
                    .padding()
                    .background(Color(hex: "#D82F75")) // Темно-розовый цвет
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 16) // Отступы по горизонтали
            }
        }
        .navigationTitle(card.title)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(hex: "#FDDEF1")]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all) // Отключаем отступы для фона
        )
    }
}

struct FavoritesView: View {
    @Binding var favorites: [WineCard]

    var body: some View {
        VStack {
            Text("Избранные вина")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            if favorites.isEmpty {
                Text("Нет избранных товаров.")
                    .foregroundColor(.gray)
                    .padding()
            } else {
                ScrollView {
                    LazyVStack(spacing: 24) {
                        ForEach(favorites) { card in
                            WineCardView(card: card)
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("Избранное")
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(hex: "#FDDEF1")]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all) // Чтобы фон заполнил весь экран
        )
    }
}

// Превью
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Расширение для цвета
extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        if hexSanitized.count == 6 {
            hexSanitized = "FF" + hexSanitized // Преобразуем в формат ARGB
        }

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

// Структура для баннера
struct AutoBannerSection: View {
    let titles: [String]

    let images: [String]

    @Binding var currentIndex: Int

    var body: some View {
        VStack {
            Image(images[currentIndex])
                .resizable()
                .scaledToFit()
                .frame(height: 170)
                .cornerRadius(10)
                .padding(.horizontal)

            Text(titles[currentIndex])
                .font(.headline)
                .padding(.top, 8)

        }
    }
}

