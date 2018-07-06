import re
from .base import Base


class Source(Base):

    def __init__(self, vim):
        Base.__init__(self, vim)

        self.name = 'travis'
        self.mark = '[Travis]'
        self.filetypes = ['yaml']
        self.min_pattern_length = 0
        self.rank = 500

    def on_init(self, context):
        vars = context['vars']

        self.foo = vars.get('deoplete#sources#travis#foo', '')
        self.bar = vars.get('deoplete#sources#travis#bar', False)

        try:
            # init(load suorce) only work
            pass
        except Exception:
            # Ignore the error
            pass

    def on_event(self, context):
        if context['event'] == 'BufRead':
            try:
                # vim autocmd event based works
                pass
            except Exception:
                # Ignore the error
                pass

    def get_complete_position(self, context):
        m = re.search(r'\w*$', context['input'])
        return m.start() if m else -1

    def gather_candidates(self, context):
        ...
        # return dict in list ([{},{},{}...])
