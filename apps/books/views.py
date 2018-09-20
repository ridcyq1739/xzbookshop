from django.shortcuts import render
from django.views.generic import View
from .models import Books, Category, Review, Comment
from users.models import Banner
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q

# Create your views here.


class IndexView(View):
    """
    首页
    """
    def get(self, request):
        banners = Banner.objects.all().order_by('add_time')[:4]

        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        all_categorys = Category.objects.all()

        xs = Books.objects.filter(category_id=1).order_by('add_time')[:4]
        wx = Books.objects.filter(category_id=2).order_by('add_time')[:4]
        zj = Books.objects.filter(category_id=3).order_by('add_time')[:4]
        ls = Books.objects.filter(category_id=4).order_by('add_time')[:4]
        sr = Books.objects.filter(category_id=5).order_by('add_time')[:4]
        kh = Books.objects.filter(category_id=6).order_by('add_time')[:4]


        context = {"banners":banners,'all_categorys':all_categorys,
                   'xs':xs, 'wx':wx, 'zj':zj, 'ls':ls, 'sr':sr, 'kh':kh}

        return render(request,'index.html',context)


class ListView(View):
    """
    全部书籍
    """
    def get(self,request):
        books = Books.objects.all()
        all_categorys = Category.objects.all()

        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        sort = request.GET.get('sort', "")
        if sort:
            if sort == 'price':
                books = books.order_by("-price")
            elif sort == 'hot':
                books = books.order_by("-click")

        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(books, 12, request=request)

        books = p.page(page)

        context = {
            'books':books,
            'sort':sort,
            'all_categorys':all_categorys
        }

        return render(request, 'list.html', context)

class ClassifyListView(View):
    """
    分类书籍
    """
    def get(self,request,category_id):
        all_categorys = Category.objects.all()
        cg = Category.objects.get(id=category_id)
        books = Books.objects.filter(category_id=category_id)
        is_c = True

        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        sort = request.GET.get('sort', "")
        if sort:
            if sort == 'price':
                books = books.order_by("-price")
            elif sort == 'hot':
                books = books.order_by("-click")

        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(books, 12, request=request)

        books = p.page(page)

        context = {
            'all_categorys':all_categorys,
            'cg': cg,
            'books': books,
            'is_c': is_c,
            'sort':sort,
        }

        return render(request, 'list.html', context)


class DetailView(View):
    """
    书籍详情
    """
    def get(self,request,book_id):
        book = Books.objects.get(id=book_id)
        book.click += 1
        book.save()

        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        cg = Category.objects.get(id=book.category_id)
        all_categorys = Category.objects.all()

        context = {
            'book':book,
            'cg':cg,
            'all_categorys':all_categorys,
        }

        return render(request,'detail.html', context)


class ReviewListView(View):
    """
    书评
    """
    def get(self,request):
        reviews = Review.objects.all()
        all_categorys = Category.objects.all()

        sort = request.GET.get('sort', "")
        if sort:
            if sort == 'click_num':
                reviews = reviews.order_by("-click_num")

        # 分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(reviews, 8, request=request)

        reviews = p.page(page)

        return render(request,'review.html',{
            'reviews':reviews,
            'all_categorys':all_categorys,
            'sort':sort,
        })


class ReviewDetailView(View):
    """
    书评详情
    """
    def get(self,request,review_id):
        review = Review.objects.get(id=int(review_id))
        review.click_num += 1
        review.save()

        return render(request,'review_detail.html',{
            'review':review
        })


class CommentView(View):
    """
    评论
    """
    def get(self,request,book_id):
        book = Books.objects.get(id=book_id)
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        cg = Category.objects.get(id=book.category_id)
        all_categorys = Category.objects.all()
        comment_list = book.comment_set.all()

        context = {
            'book': book,
            'cg': cg,
            'all_categorys': all_categorys,
            'comment_list': comment_list
        }

        return render(request, 'detail_comments.html', context)

    def post(self,request,book_id):
        book_comment = request.POST.get('comment','')
        comment = Comment()
        if book_comment != '':
            comment.comment = book_comment
            comment.user_id = request.user.id
            comment.book_id = book_id
        if request.user.is_authenticated:
            comment.save()
        else:
            return render(request,'login.html')

        book = Books.objects.get(id=book_id)
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        cg = Category.objects.get(id=book.category_id)
        all_categorys = Category.objects.all()
        comment_list = book.comment_set.all()

        context = {
            'book': book,
            'cg': cg,
            'all_categorys': all_categorys,
            'comment_list': comment_list
        }

        return render(request, 'detail_comments.html', context)





