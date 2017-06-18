# from zinnia.views.archives import EntryIndex
# from backend.models import SiteImage
#
#
# class CustomWeblog(EntryIndex):
#     template_name = 'zinnia/template.html'
#
#     def get_context_data(self, **kwargs):
#         # Call the base implementation first to get a context
#         context = super(EntryIndex, self).get_context_data(**kwargs)
#         # Add in a QuerySet of all the sliders
#         context['slider'] = SiteImage.objects.get(cat_id=5)
#         return context
