# palette.gd — Paletas de color estilo DOS/CGA
class_name Palette

# === PALETA CGA ORIGINAL (4 colores) ===
# Modo 1: Cian / Magenta / Blanco / Negro
const CGA_BLACK   = Color("#000000")
const CGA_CYAN    = Color("#55FFFF")
const CGA_MAGENTA = Color("#FF55FF")
const CGA_WHITE   = Color("#FFFFFF")

# Modo 2: Rojo / Verde / Amarillo / Negro
const CGA_RED     = Color("#FF5555")
const CGA_GREEN   = Color("#55FF55")
const CGA_YELLOW  = Color("#FFFF55")

# === PALETA EXPANDIDA (16 colores estilo EGA/VGA) ===
const RETRO = {
	"black":        Color("#000000"),
	"dark_blue":    Color("#0000AA"),
	"dark_green":   Color("#00AA00"),
	"dark_cyan":    Color("#00AAAA"),
	"dark_red":     Color("#AA0000"),
	"dark_magenta": Color("#AA00AA"),
	"brown":        Color("#AA5500"),
	"light_gray":   Color("#AAAAAA"),
	"dark_gray":    Color("#555555"),
	"blue":         Color("#5555FF"),
	"green":        Color("#55FF55"),
	"cyan":         Color("#55FFFF"),
	"red":          Color("#FF5555"),
	"magenta":      Color("#FF55FF"),
	"yellow":       Color("#FFFF55"),
	"white":        Color("#FFFFFF"),
}

# === PALETA POR ESCENARIO ===
const ALLEY_COLORS = {
	"sky":          Color("#000055"),
	"building":     Color("#AA5500"),
	"fence":        Color("#AAAAAA"),
	"window_lit":   Color("#FFFF55"),
	"window_dark":  Color("#555555"),
	"ground":       Color("#555555"),
	"cat":          Color("#000000"),
	"cat_eyes":     Color("#55FF55"),
}

const LOVE_ROOM_COLORS = {
	"background":   Color("#AA00AA"),
	"heart_solid":  Color("#FF5555"),
	"heart_broken": Color("#5555FF"),
	"player":       Color("#000000"),
	"rival":        Color("#AAAAAA"),
	"arrow":        Color("#FFFF55"),
}
