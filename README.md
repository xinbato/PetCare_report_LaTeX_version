# Báo Cáo Đồ Án: Xây Dựng Và Phát Triển Ứng Dụng PetCareApp (Bản LaTeX)

Báo cáo đồ án môn học chuẩn định dạng dành cho sinh viên **Trường Đại học Giao thông Vận tải TP.HCM (UTH)**.

## Thông tin đề tài
* **Đề tài:** Xây dựng và phát triển ứng dụng PetCareApp
* **Giảng viên hướng dẫn:** ThS. Trương Quang Tuấn
* **Sinh viên thực hiện:**
  * Dương Thành Đạt
  * Châu Tuấn Nguyên
  * Châu Hoàng Quang Huy
* **Ngành:** Công nghệ thông tin
* **Chuyên ngành:** Công nghệ thông tin
* **Đơn vị:** Viện Công nghệ thông tin và Điện, Điện tử -- Trường Đại học Giao thông Vận tải TP.HCM

---

## Cấu trúc thư mục

```text
├── main.tex                    # File biên dịch chính (khung kết nối \input)
├── preamble.tex                # Khai báo gói, font Times, căn lề, thông tin đề tài
├── refs.bib                    # Cơ sở dữ liệu tài liệu tham khảo BibTeX (chuẩn IEEE)
├── Makefile                    # Lệnh build PDF tự động
├── .gitignore                  # Bỏ qua các file tạm sinh ra khi biên dịch
│
├── frontmatter/                # Phần đầu báo cáo
│   ├── titlepage.tex           # Trang bìa chính (bìa ngoài) và bìa phụ (bìa trong)
│   ├── declaration.tex         # Lời cam đoan
│   ├── acknowledgments.tex     # Lời cảm ơn
│   └── abbreviations.tex       # Danh mục từ viết tắt
│
├── chapters/                   # Nội dung chính
│   ├── 00_introduction.tex     # Phần Mở đầu
│   ├── 01_theoretical_background.tex  # Chương 1: Cơ sở lý thuyết
│   ├── 02_system_analysis_design.tex  # Chương 2: Phân tích thiết kế yêu cầu hệ thống
│   ├── 03_implementation.tex   # Chương 3: Triển khai
│   ├── 04_results_evaluation.tex      # Chương 4: Kết quả và đánh giá
│   └── 05_conclusion.tex       # Chương 5: Kết luận và hướng phát triển
│
├── appendices/                 # Phụ lục
│   └── appendix_a.tex          # Phụ lục A: Mã nguồn và dữ liệu đính kèm
│
└── figures/                    # Hình ảnh và đồ thị minh họa
    └── uth_logo.png            # Logo trường UTH
```

---

## Hướng dẫn biên dịch

### 1. Biên dịch trên Overleaf
1. Nén toàn bộ thư mục thành file `.zip`.
2. Tạo dự án mới trên Overleaf và tải file `.zip` lên.
3. Chọn trình biên dịch mặc định là **pdfLaTeX** và nhấn **Recompile**.

### 2. Biên dịch cục bộ (TeX Live / Windows PowerShell)
```powershell
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```
File PDF xuất ra: `main.pdf`.
