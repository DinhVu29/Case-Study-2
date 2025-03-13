# Giới thiệu về dự án 
 Dự án của nhóm phân tích bảng xếp hạng chỉ số ESG trên thế giới và đặc điểm của top các nước có chỉ số ESG cao trong giai đoạn 2016 - 2022, từ đó quy chiếu sang chỉ số ESG của Việt Nam và đề xuất giải pháp cải thiện.

#### Dataset: 
- Bộ dữ liệu Dự thảo ESG dataset do Ngân hàng Thế giới cung cấp thông tin về các chủ đề bền vững chính bao gồm các hạng mục Environmental (môi trường), Social (xã hội) và Governance (quản trị).
- Dataset gồm 3 file về vùng miền 'Region_(ESG)_Data', mức độ thu nhập 'Income_Level(ESG)_Data' và các tiêu chí '(ESG)_Data' của 192 quốc gia trên thế giới từ năm 1960 - 2022 (Chọn dữ liệu từ năm 2016 - 2020).

##### Các vấn đề cần phân tích: Sử dụng Power BI
1. Tổng quan về thế giới:
- Sử dụng DAX để phân chia các nhóm nước dựa trên ESG Score
```
Category = IF('ESG'[ESG_Score] > 100, "High", IF('ESG'[ESG_Score] > 60, "Medium", "Low" ))
```
- Sau đó dùng Group để phân khúc theo 3 nhóm Cao, Trung Bình và Thấp.
- Tiếp đó dùng chart Filled Map để phân vùng các châu lục có chỉ số ESG từ thấp đến cao.
=> Bắc Âu và Bắc Mỹ là khu vực có nhóm các quốc gia có chỉ số ESG cao nhất.
2.  Phân tích trong các châu lục có chỉ số ESG cao (Bắc Âu và Bắc Mỹ)
- Sử dụng Bar Chart để tìm ra top 5 quốc gia đứng đầu về chỉ số ESG.
- Các tiêu chí nào ảnh hưởng đến chỉ số ESG đối với các quốc gia?
- Mức độ ảnh hưởng của các tiêu chí đó như nào thế nào? 
- Mối tương quan giữa các tiêu chí đó đối với các nhóm nước có chỉ số ESG cao?
3. Mối tương quan giữa các tiêu chí đối với chỉ số ESG
- Sử dụng Scatter Chart để đánh giá từng tiêu chí đối với điểm ESG của từng quốc gia là tương quan dương hay âm. 
- Từ đó nhận xét nên cải thiện tiêu chí nào và đưa ra giải pháp phù hợp. 
4. So sánh Việt Nam với các quốc gia top đầu về chỉ số ESG trên thế giới
- Sử dụng Group để nhóm Việt Nam và top 5 quốc gia có chỉ số ESG cao nhất qua các năm 
- Sử dụng Line Chart để so sánh từng tiêu chí của Việt Nam đối với các quốc gia đó.
- Chia ra thành 2 phần, các tiêu chí Việt Nam đang làm tốt và các tiêu chí Việt Nam đang làm chưa tốt. 
- Từ đó đưa ra đề xuất để tiếp tục phát huy các tiêu chí tốt và cải thiện các tiêu chí còn chưa tốt.

#### Nội dung chi tiết bài phân tích, trong file 'ESG.pptx' và 'ESG.pbix'
