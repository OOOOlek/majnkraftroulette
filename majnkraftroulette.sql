-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 21, 2024 at 01:14 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `majnkraftroulette`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `ID` int(11) NOT NULL,
  `Pytanie` varchar(255) NOT NULL,
  `Odpowiedź` enum('tak','nie') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`ID`, `Pytanie`, `Odpowiedź`) VALUES
(1, 'Czy lubisz programować?', 'tak'),
(2, 'Czy znasz język angielski?', 'tak'),
(3, 'Czy masz doświadczenie w pracy z bazami danych?', 'nie'),
(4, 'Czy potrafisz obsługiwać Excel?', 'tak'),
(5, 'Czy jesteś osobą towarzyską?', 'tak'),
(6, 'Czy lubisz sport?', 'nie'),
(7, 'Czy kiedykolwiek byłeś za granicą?', 'tak'),
(8, 'Czy masz psa?', 'nie'),
(9, 'Czy studiujesz?', 'tak'),
(10, 'Czy wolisz filmy od książek?', 'nie'),
(11, 'Czy znasz się na marketingu?', 'tak'),
(12, 'Czy umiesz grać na instrumencie muzycznym?', 'tak'),
(13, 'Czy interesujesz się podróżami?', 'nie'),
(14, 'Czy lubisz gotować?', 'tak'),
(15, 'Czy czytasz codziennie wiadomości?', 'tak'),
(16, 'Czy jesteś zadowolony ze swojej pracy?', 'nie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking`
--

CREATE TABLE `ranking` (
  `ID_Rankingu` int(11) NOT NULL,
  `Nazwa_uzytkownika` varchar(255) DEFAULT NULL,
  `Liczba_pkt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`ID_Rankingu`, `Nazwa_uzytkownika`, `Liczba_pkt`) VALUES
(1, 'profil1', 100),
(2, 'profil2', 85),
(3, 'profil3', 120),
(4, 'profil4', 65),
(5, 'profil5', 110),
(6, 'profil6', 125),
(7, 'profil7', 95),
(8, 'profil8', 80),
(9, 'profil9', 105),
(10, 'profil10', 115),
(11, 'profil11', 130),
(12, 'profil12', 100),
(13, 'profil13', 85),
(14, 'profil14', 120),
(15, 'profil15', 65);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ruletka`
--

CREATE TABLE `ruletka` (
  `ID` int(11) NOT NULL,
  `ID_uzytkownika` int(11) DEFAULT NULL,
  `ID_Rankingu` int(11) DEFAULT NULL,
  `ID_Statystyki` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruletka`
--

INSERT INTO `ruletka` (`ID`, `ID_uzytkownika`, `ID_Rankingu`, `ID_Statystyki`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statystyki`
--

CREATE TABLE `statystyki` (
  `ID_Statystyki` int(11) NOT NULL,
  `Nazwa_uzytkownika` varchar(255) DEFAULT NULL,
  `Liczba_wygranych` int(11) DEFAULT NULL,
  `Liczba_przegranych` int(11) DEFAULT NULL,
  `Liczba_pkt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statystyki`
--

INSERT INTO `statystyki` (`ID_Statystyki`, `Nazwa_uzytkownika`, `Liczba_wygranych`, `Liczba_przegranych`, `Liczba_pkt`) VALUES
(1, 'profil1', 10, 5, 100),
(2, 'profil2', 8, 7, 85),
(3, 'profil3', 15, 2, 120),
(4, 'profil4', 6, 9, 65),
(5, 'profil5', 12, 4, 110),
(6, 'profil6', 14, 3, 125),
(7, 'profil7', 9, 6, 95),
(8, 'profil8', 7, 8, 80),
(9, 'profil9', 11, 5, 105),
(10, 'profil10', 13, 4, 115),
(11, 'profil11', 16, 1, 130),
(12, 'profil12', 10, 5, 100),
(13, 'profil13', 8, 7, 85),
(14, 'profil14', 15, 2, 120),
(15, 'profil15', 6, 9, 65);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID_uzytkownika` int(11) NOT NULL,
  `Nazwa_uzytkownika` varchar(255) NOT NULL,
  `Haslo` varchar(255) NOT NULL,
  `ID_Profilu` varchar(255) DEFAULT NULL,
  `ID_Rejestracji` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID_uzytkownika`, `Nazwa_uzytkownika`, `Haslo`, `ID_Profilu`, `ID_Rejestracji`) VALUES
(1, 'uzytkownik1', 'haslo1', '1', '100'),
(2, 'uzytkownik2', 'haslo2', '2', '101'),
(3, 'uzytkownik3', 'haslo3', '3', '102'),
(4, 'uzytkownik4', 'haslo4', '4', '103'),
(5, 'uzytkownik5', 'haslo5', '5', '104'),
(6, 'uzytkownik6', 'haslo6', '6', '105'),
(7, 'uzytkownik7', 'haslo7', '7', '106'),
(8, 'uzytkownik8', 'haslo8', '8', '107'),
(9, 'uzytkownik9', 'haslo9', '9', '108'),
(10, 'uzytkownik10', 'haslo10', '10', '109'),
(11, 'uzytkownik11', 'haslo11', '11', '110'),
(12, 'uzytkownik12', 'haslo12', '12', '111'),
(13, 'uzytkownik13', 'haslo13', '13', '112'),
(14, 'uzytkownik14', 'haslo14', '14', '113'),
(15, 'uzytkownik15', 'haslo15', '15', '114'),
(36, '', '', '26', '125'),
(37, '', '', '27', '126'),
(38, '', '', '28', '127'),
(39, '', '', '29', '128'),
(40, '', '', '30', '129'),
(41, '', '', '31', '130'),
(42, '', '', '32', '131'),
(43, '', '', '33', '132'),
(44, '', '', '34', '133'),
(45, '', '', '35', '134'),
(46, '', '', '36', '135'),
(47, '', '', '37', '136'),
(48, '', '', '38', '137'),
(49, '', '', '39', '138'),
(50, '', '', '40', '139'),
(51, '', '', '41', '140'),
(52, '', '', '42', '141'),
(53, '', '', '43', '142'),
(54, '', '', '44', '143'),
(55, '', '', '45', '144'),
(56, '', '', '46', '145'),
(57, '', '', '47', '146'),
(58, '', '', '48', '147'),
(59, '', '', '49', '148'),
(60, '', '', '50', '149');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`ID_Rankingu`);

--
-- Indeksy dla tabeli `ruletka`
--
ALTER TABLE `ruletka`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_uzytkownika` (`ID_uzytkownika`),
  ADD KEY `ID_Rankingu` (`ID_Rankingu`),
  ADD KEY `ID_Statystyki` (`ID_Statystyki`);

--
-- Indeksy dla tabeli `statystyki`
--
ALTER TABLE `statystyki`
  ADD PRIMARY KEY (`ID_Statystyki`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID_uzytkownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `ID_Rankingu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ruletka`
--
ALTER TABLE `ruletka`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `statystyki`
--
ALTER TABLE `statystyki`
  MODIFY `ID_Statystyki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ruletka`
--
ALTER TABLE `ruletka`
  ADD CONSTRAINT `ruletka_ibfk_1` FOREIGN KEY (`ID_uzytkownika`) REFERENCES `uzytkownicy` (`ID_uzytkownika`),
  ADD CONSTRAINT `ruletka_ibfk_3` FOREIGN KEY (`ID_Rankingu`) REFERENCES `ranking` (`ID_Rankingu`),
  ADD CONSTRAINT `ruletka_ibfk_5` FOREIGN KEY (`ID_Statystyki`) REFERENCES `statystyki` (`ID_Statystyki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
