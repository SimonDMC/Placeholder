# called by simondmc:lvl2/2-2/gray_concrete_powder, replaces flying concrete powder upon impact

setblock 26 104 55 air destroy
setblock 26 104 55 structure_void

# to prevent a soft-lock this function is also called by simondmc:lvl2/water upon placing the water too late