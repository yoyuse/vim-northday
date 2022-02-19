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

NAME = northday
DARK = northnight

usage:
	@echo "usage: make [all | deploy]"

all: $(NAME).vim $(NAME).lightline.vim $(DARK).vim $(DARK).lightline.vim

deploy: all
	cp $(NAME).vim ../colors/$(NAME).vim
	cp $(NAME).lightline.vim ../autoload/lightline/colorscheme/$(NAME).vim
	cp $(DARK).vim ../colors/$(DARK).vim
	cp $(DARK).lightline.vim ../autoload/lightline/colorscheme/$(DARK).vim

$(NAME).vim: $(MKVIM) $(NAME).txt $(NAME).template.vim
	ruby $(MKVIM) -d $(NAME).txt $(NAME).template.vim > $@

$(NAME).lightline.vim: $(MKVIM) $(NAME).txt $(NAME).lightline.template.vim
	ruby $(MKVIM) -d $(NAME).txt $(NAME).lightline.template.vim > $@

$(DARK).vim: $(MKVIM) $(DARK).txt $(NAME).template.vim
	ruby $(MKVIM) -d $(DARK).txt $(NAME).template.vim > $@

$(DARK).lightline.vim: $(MKVIM) $(DARK).txt $(NAME).lightline.template.vim
	ruby $(MKVIM) -d $(DARK).txt $(NAME).lightline.template.vim > $@
