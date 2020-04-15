SET time_zone = "+00:00";

CREATE DATABASE destiny_cards;
use destiny_cards;

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cards`
  (`id`, `author`, `content`, `date_created`)
VALUES
	(1, 'Camille', 'Si tu lis ca, tu as presque tout bon !', '2020-04-14 18:26:27'),
	(2, 'Richard Powers', 'L\'attente : la seule faculté qui se détériore avec la pratique.', '2020-04-14 18:26:27'),
	(3, 'Franz Hellens', 'Les hommes piétinent le bonheur au lieu de le remuer comme une terre délicate.', '2020-04-14 18:27:42'),
	(4, 'Édouard Philippe', 'Tout remonte-t-il à Matignon? Non, seulement les emmerdes.', '2020-04-14 18:27:42'),
	(5, 'Bernard Werber', 'La meilleure preuve qu\'il existe une forme d\'intelligence extraterrestre est qu\'elle n\'a pas essayé de nous contacter.', '2020-04-14 18:28:49'),
	(6, 'Bruno Léandri', 'Dans les milieux scientifiques, la connerie n\'est pas absente, mais moins épaisse qu\'ailleurs.', '2020-04-14 18:28:49');
