# دليل المساهمة — Contributing Guide

شكراً لاهتمامك بالمساهمة في مشروع روافد! 🎉

---

## 📋 جدول المحتويات

- [مدونة السلوك](#مدونة-السلوك)
- [كيف تبدأ؟](#كيف-تبدأ)
- [أنواع المساهمات](#أنواع-المساهمات)
- [سير العمل مع Git](#سير-العمل-مع-git)
- [معايير كتابة الكود](#معايير-كتابة-الكود)
- [معايير رسائل Commit](#معايير-رسائل-commit)
- [عملية مراجعة الكود](#عملية-مراجعة-الكود)

---

## مدونة السلوك

يلتزم جميع المساهمين باحترام بعضهم البعض والتعاون بروح إيجابية تخدم هدف المشروع الوطني.

---

## كيف تبدأ؟

1. **Fork** المستودع على GitHub
2. **Clone** نسختك المحلية:
   ```bash
   git clone https://github.com/YOUR_USERNAME/rawafid.git
   cd rawafid
   ```
3. **إضافة Remote** للمستودع الأصلي:
   ```bash
   git remote add upstream https://github.com/your-org/rawafid.git
   ```
4. **تثبيت التبعيات:**
   ```bash
   npm install
   cp .env.example .env
   ```

---

## أنواع المساهمات

| النوع | الوصف |
|-------|-------|
| 🐛 Bug Fix | إصلاح خطأ موجود |
| ✨ Feature | إضافة ميزة جديدة |
| 📚 Docs | تحسين التوثيق |
| 🎨 Style | تحسينات CSS/تصميم |
| ♻️ Refactor | إعادة هيكلة الكود دون تغيير وظيفته |
| 🧪 Test | إضافة أو تحديث الاختبارات |
| ⚡ Performance | تحسينات الأداء |

---

## سير العمل مع Git

### 1. تحديث الفرع الرئيسي
```bash
git checkout main
git pull upstream main
```

### 2. إنشاء فرع جديد
```bash
# نمط التسمية: type/short-description
git checkout -b feat/value-chain-tracking
git checkout -b fix/login-redirect-bug
git checkout -b docs/update-api-guide
```

### 3. Commit التغييرات
```bash
git add .
git commit -m "feat: add value chain tracking module"
```

### 4. Push ورفع Pull Request
```bash
git push origin feat/value-chain-tracking
```

---

## معايير كتابة الكود

- **JavaScript/TypeScript:** اتبع قواعد ESLint المرفقة
- **Python:** اتبع PEP 8 وفحوصات `ruff`
- **CSS:** استخدم CSS Variables ولا تستخدم inline styles
- **التسمية:** استخدم camelCase للمتغيرات، PascalCase للكلاسات، SCREAMING_SNAKE للثوابت
- **التعليقات:** علّق على "لماذا" لا "ماذا"
- **اللغة:** الكود بالإنجليزية، التعليقات يمكن أن تكون بالعربية

---

## معايير رسائل Commit

نتبع [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <subject>

[body - optional]
[footer - optional]
```

### الأنواع المتاحة

| النوع | الاستخدام |
|-------|-----------|
| `feat` | ميزة جديدة |
| `fix` | إصلاح خطأ |
| `docs` | تغييرات في التوثيق |
| `style` | تغييرات تنسيق لا تؤثر على المنطق |
| `refactor` | إعادة هيكلة |
| `test` | إضافة/تحديث اختبارات |
| `chore` | مهام صيانة (تحديث تبعيات، إعدادات) |
| `perf` | تحسين الأداء |
| `ci` | تغييرات في CI/CD |

### أمثلة
```bash
git commit -m "feat(auth): add JWT refresh token mechanism"
git commit -m "fix(api): handle empty response from NCSC API"
git commit -m "docs(readme): update setup instructions"
```

---

## عملية مراجعة الكود

1. افتح **Pull Request** مع وصف واضح للتغييرات
2. ربط الـ PR بالـ Issue المرتبط إن وجد: `Closes #123`
3. تأكد من اجتياز جميع فحوصات CI
4. انتظر مراجعة مسؤول المشروع (خلال 3 أيام عمل)
5. طبّق الملاحظات وأعِد طلب المراجعة

---

شكراً لمساهمتك في بناء البنية التحتية للقطاع الأهلي السعودي! 🇸🇦
