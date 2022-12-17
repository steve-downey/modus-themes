;;; modus-vivendi-deuteranopia-theme.el --- Elegant, highly legible and customizable dark theme -*- lexical-binding:t -*-

;; Copyright (C) 2019-2022  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Modus-Themes Development <~protesilaos/modus-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/modus-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/modus-themes

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The Modus themes conform with the highest standard for
;; color-contrast accessibility between background and foreground
;; values (WCAG AAA).  Please refer to the official Info manual for
;; further documentation (distributed with the themes, or available
;; at: <https://protesilaos.com/emacs/modus-themes>).

;;; Code:



(eval-and-compile
  (unless (and (fboundp 'require-theme)
               load-file-name
               (equal (file-name-directory load-file-name)
                      (expand-file-name "themes/" data-directory))
               (require-theme 'modus-themes t))
    (require 'modus-themes))

  (deftheme modus-vivendi-deuteranopia
    "Elegant, highly legible and customizable dark theme.
Conforms with the highest legibility standard for color contrast
between background and foreground in any given piece of text,
which corresponds to a minimum contrast in relative luminance of
7:1 (WCAG AAA standard).")

  (defconst modus-vivendi-deuteranopia-palette
    '(
;;; Basic values

      (bg-main          "#000000")
      (bg-dim           "#1e1e1e")
      (fg-main          "#ffffff")
      (fg-dim           "#989898")
      (fg-alt           "#c6daff")
      (bg-active        "#535353")
      (bg-inactive      "#303030")
      (border           "#646464")

;;; Common accent foregrounds

      (red             "#ff5f59")
      (red-warmer      "#ff6b55")
      (red-cooler      "#ff7f9f")
      (red-faint       "#ff9580")
      (red-intense     "#ff5f5f")
      (green           "#44bc44")
      (green-warmer    "#70b900")
      (green-cooler    "#00c06f")
      (green-faint     "#88ca9f")
      (green-intense   "#44df44")
      (yellow          "#d0bc00")
      (yellow-warmer   "#fec43f")
      (yellow-cooler   "#dfaf7a")
      (yellow-faint    "#d2b580")
      (yellow-intense  "#efef00")
      (blue            "#2fafff")
      (blue-warmer     "#79a8ff")
      (blue-cooler     "#00bcff")
      (blue-faint      "#82b0ec")
      (blue-intense    "#338fff")
      (magenta         "#feacd0")
      (magenta-warmer  "#f78fe7")
      (magenta-cooler  "#b6a0ff")
      (magenta-faint   "#cab2df")
      (magenta-intense "#ff66ff")
      (cyan            "#00d3d0")
      (cyan-warmer     "#4ae2f0")
      (cyan-cooler     "#6ae4b9")
      (cyan-faint      "#9ac8e0")
      (cyan-intense    "#00eff0")

;;; Common accent backgrounds

      (bg-red      "#9d1f1f")
      (bg-green    "#2f822f")
      (bg-yellow   "#7a6100")
      (bg-blue     "#1640b0")
      (bg-magenta  "#7030af")
      (bg-cyan     "#2266ae")

      (bg-red-subtle      "#620f2a")
      (bg-green-subtle    "#00422a")
      (bg-yellow-subtle   "#4a4000")
      (bg-blue-subtle     "#242679")
      (bg-magenta-subtle  "#552f5f")
      (bg-cyan-subtle     "#004065")

;;; Graphs

      (bg-graph-red-0     "#b52c2c")
      (bg-graph-red-1     "#702020")
      (bg-graph-green-0   "#4fd100")
      (bg-graph-green-1   "#007800")
      (bg-graph-yellow-0  "#f1e00a")
      (bg-graph-yellow-1  "#b08600")
      (bg-graph-blue-0    "#2fafef")
      (bg-graph-blue-1    "#1f2f8f")
      (bg-graph-magenta-0 "#bf94fe")
      (bg-graph-magenta-1 "#5f509f")
      (bg-graph-cyan-0    "#47dfea")
      (bg-graph-cyan-1    "#00808f")

;;; Special purpose

      (bg-completion       "#2f447f")
      (bg-hover            "#004f70")
      (bg-hover-secondary  "#654a39")
      (bg-hl-line          "#2f3849")
      (bg-paren-match      "#2f7f9f")
      (bg-paren-expression "#453040")
      (bg-region           "#5c5c5c")
      (bg-region-subtle    "#4f1c2f")
      (bg-prompt           "#5f3f20")

      (bg-char-0 "#0050af")
      (bg-char-1 "#7f1f7f")
      (bg-char-2 "#625a00")

;;; Diffs

      (bg-added           "#003366")
      (bg-added-faint     "#001f4f")
      (bg-added-refine    "#0f4f7f")
      (bg-added-intense   "#0f4fbf")
      (fg-added           "#c4d5ff")

      (bg-changed         "#2f123f")
      (bg-changed-faint   "#1f022f")
      (bg-changed-refine  "#3f325f")
      (bg-changed-intense "#7f42af")
      (fg-changed         "#e3cfff")

      (bg-removed         "#3f3f00")
      (bg-removed-faint   "#281f00")
      (bg-removed-refine  "#535300")
      (bg-removed-intense "#dfd23a")
      (fg-removed         "#d4d48f")

;;;; Mappings

      (bg-mode-line-active        bg-active)
      (fg-mode-line-active        fg-main)
      (border-mode-line-active    fg-dim)
      (bg-mode-line-inactive      bg-inactive)
      (fg-mode-line-inactive      fg-dim)
      (border-mode-line-inactive  border)

      (cursor fg-main)
      (builtin magenta-warmer)
      (comment yellow-cooler)
      (constant blue-cooler)
      (docstring cyan-faint)
      (fnname magenta)
      (keyword magenta-cooler)
      (preprocessor red-cooler)
      (string blue-warmer)
      (type cyan-cooler)
      (variable cyan)

      (date cyan)
      (weekend blue) ; for M-x calendar and Org agenda
      (keybind blue-cooler)
      (link blue-warmer)
      (link-symbolic cyan)
      (link-visited yellow-faint)
      (name blue-cooler)
      (identifier yellow-faint)
      (tag magenta-faint)
      (prompt cyan-cooler)

      (rx-construct yellow-cooler)
      (rx-backslash blue-cooler)

      (err yellow-warmer)
      (warning yellow-cooler)
      (info blue)

      (underline-err red-intense)
      (underline-warning yellow-intense)
      (underline-note cyan-intense)

      (accent-0 blue-cooler)
      (accent-1 yellow)
      (accent-2 cyan-cooler)
      (accent-3 magenta-warmer)
      (bg-accent-0 bg-blue-subtle)
      (bg-accent-1 bg-yellow-subtle)
      (bg-accent-2 bg-cyan-subtle)
      (bg-accent-3 bg-magenta-subtle)

      (mail-cite-0 blue-warmer)
      (mail-cite-1 yellow-cooler)
      (mail-cite-2 blue-cooler)
      (mail-cite-3 yellow)
      (mail-part blue)
      (mail-recipient blue)
      (mail-subject yellow-warmer)
      (mail-other cyan-faint)

      (heading-0 cyan-cooler)
      (heading-1 fg-main)
      (heading-2 yellow-faint)
      (heading-3 blue-faint)
      (heading-4 magenta)
      (heading-5 green-faint)
      (heading-6 red-faint)
      (heading-7 cyan-faint)
      (heading-8 fg-dim)

      (prose-code cyan-cooler)
      (prose-macro magenta-cooler)
      (prose-verbatim magenta-warmer))
    "The entire palette of the `modus-vivendi-deuteranopia' theme.
Each element has the form (NAME HEX) with the former as a
symbol and the latter as a string.")

  (defvar modus-vivendi-deuteranopia-palette-overrides nil
    "Overrides for `modus-vivendi-deuteranopia-palette'.")

  (modus-themes-theme modus-vivendi-deuteranopia modus-vivendi-deuteranopia-palette modus-vivendi-deuteranopia-palette-overrides)

  (provide-theme 'modus-vivendi-deuteranopia))

;;;###theme-autoload
(put 'modus-vivendi-deuteranopia 'theme-properties '(:background-mode dark :kind color-scheme :family modus))

;;; modus-vivendi-deuteranopia-theme.el ends here