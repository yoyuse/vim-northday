# 2022-02-27
# 2022-02-18
# 2022-02-12
#
# $@ : ターゲットファイル名
# $% : ターゲットがアーカイブメンバだったときのターゲットメンバ名
# $< : 最初の依存するファイルの名前
# $? : ターゲットより新しいすべての依存するファイル名
# $^ : すべての依存するファイルの名前
# $+ : Makefileと同じ順番の依存するファイルの名前
# $* : サフィックスを除いたターゲットの名前

MKVIM = mkvim.rb

mkitermcolors = ./mkitermcolors.swift
mkterminal = ./mkterminal.swift

NAME = northday
DARK = northnight

.SUFFIXES: .Xresources .itermcolors .terminal

usage:
	@echo "usage: make [all | deploy]"

all: vim lightline itermcolors terminal

vim: $(NAME).vim $(DARK).vim
lightline: $(NAME).lightline.vim $(DARK).lightline.vim
itermcolors: $(NAME).itermcolors $(DARK).itermcolors
terminal: $(NAME).terminal $(DARK).terminal

deploy: all
	cp $(NAME).vim ../colors/$(NAME).vim
	cp $(NAME).lightline.vim ../autoload/lightline/colorscheme/$(NAME).vim
	cp $(DARK).vim ../colors/$(DARK).vim
	cp $(DARK).lightline.vim ../autoload/lightline/colorscheme/$(DARK).vim
	cp $(NAME).itermcolors $(DARK).itermcolors ../extra/iTerm2/
	cp $(NAME).terminal $(DARK).terminal ../extra/Terminal_app/

$(NAME).vim: $(MKVIM) $(NAME).txt $(NAME).template.vim
	ruby $(MKVIM) -d $(NAME).txt $(NAME).template.vim > $@

$(NAME).lightline.vim: $(MKVIM) $(NAME).txt $(NAME).lightline.template.vim
	ruby $(MKVIM) -d $(NAME).txt $(NAME).lightline.template.vim > $@

$(DARK).vim: $(MKVIM) $(DARK).txt $(NAME).template.vim
	ruby $(MKVIM) -d $(DARK).txt $(NAME).template.vim > $@

$(DARK).lightline.vim: $(MKVIM) $(DARK).txt $(NAME).lightline.template.vim
	ruby $(MKVIM) -d $(DARK).txt $(NAME).lightline.template.vim > $@

$(NAME).Xresources: $(NAME).txt template.Xresources
	ruby $(MKVIM) -d $(NAME).txt template.Xresources > $@

$(DARK).Xresources: $(DARK).txt template.Xresources
	ruby $(MKVIM) -d $(DARK).txt template.Xresources > $@

.Xresources.itermcolors:
	$(mkitermcolors) $^

.Xresources.terminal:
	$(mkterminal) $^
