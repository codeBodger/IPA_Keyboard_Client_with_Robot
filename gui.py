import wx

class GUI:
    def __init__(self, title: str) -> None:
        self.app = wx.App()
        self.frame = wx.Frame(None, title=title)
        self.frame.Show()
        self.children: dict[str,wx.Window] = dict()
    
    def mainloop(self, *funcs):
        for func in funcs: func()
        self.app.MainLoop()
    
    def destroy(self):
        self.frame.Destroy()
        self.app.Destroy()

    def button(self, id: str, label: str, command, pos: tuple[int,int] | None = None, offset: tuple[int,int] = (0,5), **kwargs) -> wx.Button:
        if not pos: pos = self.__prev_end(offset)
        if id in self.children:
            raise KeyError(f'The id "{id}" is already in use!')
        b = wx.Button(self.frame, label=label, pos=pos, **kwargs)
        self.frame.Bind(wx.EVT_BUTTON, lambda _: command(), b)
        self.children[id] = b
        return b
    
    def text(self, id: str, label: str, pos: tuple[int,int] | None = None, offset: tuple[int,int] = (0,5), **kwargs) -> wx.StaticText:
        if not pos: pos = self.__prev_end(offset)
        if id in self.children:
            raise KeyError(f'The id "{id}" is already in use!')
        t = wx.StaticText(self.frame, label=label, pos=pos, **kwargs)
        self.children[id] = t
        return t
    
    def __prev_end(self, offset: tuple[int,int]) -> tuple[int,int]:
        if self.frame.Children:
            pos = self.frame.Children[-1].GetRect().GetBottomLeft().Get()
            return (pos[0] + offset[0] , pos[1] + offset[1])
        return wx.DefaultPosition.Get()
